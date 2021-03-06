classdef Decoder
%Class responsible for decoding chirps - contains all functons pertaining to decoding
    properties
        Y       % Y{p} is a 2^m x 2^p matrix of measurements for patch p
        r       % 0, 1 or 2; 2^r patches
        re      % logical: false=complex chirps, true=real chirps
        m       % size of chirp code (2^m is length of codewords in each slot) recommend m = 6, 7 or 8
        p       % 2^p slots, require p<=(m-r)(m-r+3)/2-1 for complex
                %                    p<=(m-r)(m-r+1)/2-1 for real
        K       % number of messages
        params  % various; see below
        patches % number of patches
    end

    methods
        function self = Decoder(Y,re,m,p,K)
            addpath('utils');
            self.Y=Y;
            self.r=0;
            self.re=re;
            self.m=m;
            self.p=p;
            self.K=K;
            self.patches=2^self.r;
            
            %default parameter values
            self.params.alpha = 0.1; %accept cfomponents if coefficient is within alpha of 1
            
        end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function [output_bits, h_hat] = chirrup_decode(self)

        % chirrup_decode  Performs CHIRRUP decoding
        %
        % output_bits  B x K matrix of the K B-bit messages
        % timing       running time in seconds
        %
        % AJT (12/9/18)

            global outer_recov
            warning('off','MATLAB:rankDeficientMatrix');

            for patch = 1:self.patches %patchは一つでやる

                    outer_recov = [];
                    Yp = self.Y{patch}; % 1patch分のY、つまり2^p slotsはある

                    %cycle through the slots repeatedly
                    for slot = 1:2^self.p %slotごとに計算
                        %run chirp reconstruction on given slot
                        recov = self.chirp_rec(Yp(:,slot),self.K,slot);                            
                    end
                    
                    outer_recov = recov;
                    
                    %convert components back into bits
                    bit_matrix = self.find_bits(outer_recov);
                    
                    h_hat=[];
                    for i=1:length(outer_recov)
                        h_hat = [h_hat, outer_recov(i).c];
                    end
            end
                    output_bits=[];
                    output_bits = bit_matrix';
                    kmin = min(self.K,size(output_bits,2));
                    h_hat = h_hat(:,1:kmin);
                    output_bits = output_bits(:,1:kmin);
        end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


        function recov = chirp_rec(self,y,nitlim,slot)

        % chirp_rec     Runs the chirp reconstruction algorithm,
        %               incorporating(含んでいる) components found in other slots.
        %
        % y        measurement vector for given slot
        % nitlim   iteration limit
        % slot     slot number
        %
        % recov    multidimensional struct storing (P,b,c) for each component
        %          e.g. for component i: recov(1).P, recov(1).b, recov(1).c
        %
        % Sina Jafarpour (14/4/08) and AJT (12/9/18)

            global outer_recov

            foo.P = [];
            foo.b = [];
            foo.c = [];
            foo.comps = [];
            recov(1) = foo;
            allRM = [];
            ncomp = 0;

            while (ncomp < nitlim && norm(y)>1e-3)

                [Phat, bhat] = self.findPb(y);

                %determine component from P,b
                RM = Encoder.gen_chirp(Phat,bhat);
                allRM = [allRM RM];

                %use all components & refine previous ests.
                cr = allRM\y; 
                % x=A\Bは線形方程式系 A*x = B   allRM*cr = y を解きます。
                %行列 A と行列 B の行数は同じでなければなりません。

                c = cr(end);
                allc = [recov(1:ncomp).c].';
                newc = [allc; 0]+cr;
                for q = 1:ncomp
                    recov(q).c = newc(q);
                end
                y = y - allRM*cr;

                %a component has been detected and handled.
                %record component parameters
                ncomp = ncomp+1;
                recov(ncomp).P = Phat;
                recov(ncomp).b = bhat;
                recov(ncomp).c = c;
                recov(ncomp).comp = RM;

            end
        end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function bits = find_bits(self,res)

            bits = [];
            K = length(res);

            for k = 1:K

                Pk = res(k).P;
                bk = res(k).b;
                [i, j] = upper_indices(self.m, self.re);
                for l = 1:length(i)
                    Pvec(l) = Pk(i(l),j(l));
                end
                bits2 = [Pvec bk];
                bits(k,:) = [bits2];
            end
        end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function [Pout bout] = findPb(self,y)

        % findPb  Find P matrix & b vector recursively.
        %
        % y         signal, length 2^M
        %
        % Pout      P matrix
        % bout      b vector
        %
        % Sina Jafarpour (29/4/08) and AJT (12/9/18)

            global perm prout DGbasis;

            % so these are visible from within recursive function
            twoM = length(y);
            M = log2(twoM);

            DGbasis = makeDGC(self.re,M);
            
            %{
            self.re = 0, M = 3 のとき
            
            val(:,:,1) =
                 1     0     0
                 0     0     0
                 0     0     0

            val(:,:,2) =
                 0     1     0
                 1     0     0
                 0     0     0

            val(:,:,3) =
                 0     0     1
                 0     0     0
                 1     0     0
            ...
            
            val(:,:,6) =
                 0     0     0
                 0     0     0
                 0     0     1
            
            %}
            
            if (self.re==0)
                DGblen = M*(M+1)/2;
            else
                DGblen = M*(M-1)/2;
            end

            %determine probe response to each basis vector
            
            %probe = Hadamard xform of y^*(a)y(a+e), e = basis vector
            
            %eye(3)は3×3の単位行列（対角のみが1）
            
            evp = eye(M);
            prout = zeros(M,twoM);
            
            % prout : Mat(M×twoM)
            
            for m = 1:M % 1からlog2(len(y))まで
                %{
                M = 3なら
                evp(1,:)は[1,0,0]
                evp(2,:)は[0,1,0]
                evp(3,:)は[0,0,1]
                %}
                prout(m,:) = self.probe_ye(y,evp(m,:));
            end
%             
%              figure
%              x = 1:1:length(y);
%              plot(x,abs(prout));
%              xlabel('number')
%              ylabel('prout')


            perm = (1:M)';

            %manipulate permutation(順列) so only rows encompassing(取り囲む) the first
            %DGblen elements will be used.
            if (self.re==0)
                csum = cumsum(M:-1:1);
            else
                csum = cumsum(M-1:-1:1);
                %cumsum():累積和を求める
%                  cumsum(1:1:3)
%                     ans =
%                          1     3     6
%                  (1:1:3) → [1 2 3]を表す
           
            end
            nrow = find(csum>=DGblen);
            % findは条件を満たすインデックスを渡す
            nrow = nrow(1);
            p1 = perm(perm<=nrow);
            p2 = perm(perm>nrow);
            perm = [p1; p2];   %could have just p1, since we'll never loop over rest

            %do the search
            [Pout,bout,rec] = self.fPN_recursive(1,y,zeros(M),[]);

            %what to do if nothing found?
            if isempty(Pout)
                % Oh heck.  Didn't find anything.
                % Make one up at random... 
                [Pout,bout] = self.bstr2Pb(M,[]);
            else
%                 disp('find P and b');
            end
        end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function [Pout,bout,crec] = fPN_recursive(self,m,y,P,rec)

            global perm prout DGbasis;
            %defined prior to call of this recursive function

            M = length(P);

            %which basis matrices go with current row
            DGblen = size(DGbasis,3);
            if (self.re==0)
                csM1 = cumsum(M:-1:1);
            else
                csM1 = cumsum(M-1:-1:1);
            end
            DGto = csM1(m);
            DGto = min(DGto,DGblen);

            pm = perm(m);
            row = P(pm,:);
            if (self.re==0)
                fixed = perm(1:m-1);
                unfixed = perm(m:end);
            else
                fixed = perm(1:m);
                unfixed = perm(m+1:end);
            end

            %generate all candidates for this row,
            %given constraints by already-fixed rows
            %(= fixed element values in this row)
            nfree = 2^length(unfixed);

            nums = 0:nfree-1;
            cands = row(ones(nfree,1),:);
            cands(:,unfixed) = (dec2bin(nums)=='1');
            candix = cands * (2.^(M-1:-1:0)')  +1;  % note +1 for Matlab index

            %probe values of these candidates
            %when probed with vector having 1 in pm_th pos
            s1 = abs(prout(pm,candix));

            if m>1

%                 % use vector with ones in current pos plus previous pos
%                 pmprev = perm(m-1);
%                 evpch = zeros(M,1);  evpch([pm pmprev]) = 1;
% %                 この次で|H(g)|を行なっている
%                 prout_pch = self.probe_ye(y,evpch);
%                 ixpch = rec(m-1).candix-1;  % note -1 coz it was a matlab index.
%                 ixvec = bitxor(candix-1,ixpch);
%                 s2 = abs(prout_pch(ixvec+1))';
                
                s2 = zeros(size(s1));

            else
                s2 = zeros(size(s1));
                %pmprev = [];
            end

            % order candidates based on scores
            [foo,rix] = sort(-(s1+s2));    % score + parity score
%             h ← |H(f)| + |H(g)|のところ

            rmax = s1(rix);   % <-- どんな計算? ==> s1の要素をrixのインデックスで並べる
            rmax_pch = s2(rix);

            % this is used in b computation.
            % Set up here to avoid doing in every loop
            a = (0:2^M-1)';
            aval = double( dec2bin(a,M)=='1' );  % binary expansion

            % process each candidate in order
            Pout = [];
            crec = [];
            bout = [];
            v = 1;
                vsc = rmax(v);
                vix = rix(v);
                psc = rmax_pch(v);

                newrow = cands(vix,:);
                Phat = P;
                Phat(pm,:) = newrow;
                Phat(:,pm) = Phat(pm,:);

                newrec.candix = candix(vix);
                newrec.vsc = vsc;
                newrec.psc = psc;

                recx = [rec; newrec];

                %have we filled those rows of matrix which are constrained by
                %the D-G basis?
                 if DGto==(DGblen)

                     % "detection"
                     euse = zeros(M,1);
                     Pe = rem( Phat*euse ,2);
                     phi = Encoder.gen_chirp(Phat,Pe');
%                    ここはPe(= b)が全て0でCHIRRUPの式(2)の次の式を指している
                     foo = conj(phi).*y.*( (-1).^( aval*Pe) );
                     Hfoo = self.fhtnat(foo);  % * scale 2^M
                     Hfoo = Hfoo * 2^M;  % restore scale
                     [qq,ww] = max(abs(Hfoo));
                     bhat = aval(ww,:);

                     Pout = Phat;
                     crec = recx;
                     bout = bhat;
                else

                    % recursion for next row
                    [Pout_, bout_, crec_] = self.fPN_recursive(m+1,y,Phat,recx);

                    if ~isempty(Pout_)
                        % if we get here, return cand deemed OK
                        Pout = Pout_;
                        bout = bout_;
                        crec = crec_;
                        return;  % quit loop & return
                    end

                end % if DGto==DGblen


        end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function [prb,yprod] = probe_ye(self,y,ein)

        % probe_ye  probe data vector with error vector
        %
        % given data vector  "" y ""  and "error value"   "" e "",
        % compute Hadamard transform ""prb""  of yprod = conj(y(a)) * y(a+e)


        % Sina Jafarpour 28/3/08

            Mpow = length(y);
            M = log2(Mpow);  % this should be an integer
            %isscalar(A):Aがスカラーなら1、その他のときは0
            %einはevp(単位行列)の上から一行ずつくる
            if isscalar(ein)
                e = ein;
            else
                e = (2.^(M-1:-1:0))*ein(:);
                %ein(:)はein()を列ベクトルに形状変更
                %2.^(M-1:-1:0)は [2^(M-1) 2^(M-2) 2^(M-3) ... 2^(0)]となる
                %つまり、[2^(M-1) 2^(M-2) 2^(M-3) ...2^(0)]・ein^Tのベクトルの内積をとっている
            end
            %{
            disp(ein(:))
            disp("2^  ")
            disp(2.^(M-1:-1:0))
            %}

            % index vector (starting at 0)
            a = (0:Mpow-1)';
            % a : [0,1,2,3,...,Mpow-1]^T 列ベクトル

            % a plus e values
            ape = bitxor(a,e);

            % y(a+e)
            yape = y(ape+1); % ← どんな計算しとるん？？？？？ 1×nの列ベクトルと1×nの列ベクトルの掛け算？
            % シフトしている！！！
            
            % product
            %conj(x):xの複素共役を求める
            % .* : 要素単位の演算
            yprod = conj(y).*yape;

            % use fast Walsh-Hadamard transform routine
            prb = self.fhtnat(yprod);

        end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function x=fhtnat(self, data)
        %------------------------------------------------------
        %1D Natural(Hadamard)ordered Fast Hadamard Transform
        %------------------------------------------------------
        % Author: Gylson Thomas
        % e-mail: gylson_thomas@yahoo.com
        % Asst. Professor, Electrical and Electronics Engineering Dept.
        % MES College of Engineering Kuttippuram,
        % Kerala, India, February 2005.
        % copyright 2007.
        % This function implements the 1D natural(Hadamard)ordered Fast Hadamard Transform,
            N = pow2(floor(log2(length(data))));
            x = data(1:N);
            k1=N; k2=1; k3=N/2;
            for i1=1:log2(N)
                L1=1;
                for i2=1:k2
                    for i3=1:k3
                        i=i3+L1-1; j=i+k3;
                        temp1= x(i); temp2 = x(j);
                        x(i) = temp1 + temp2;
                        x(j) = temp1 - temp2;
                    end
                        L1=L1+k1;
                end
                    k1 = k1/2;  k2 = k2*2;  k3 = k3/2;
            end
            %inv(A) : Aの逆行列を示す
            x=inv(N)*x; %Delete this line for inverse transform
        end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function [P,b] = bstr2Pb(self,M,bstr)
        % convert a bitstring (as an integer or as a logical vector) to P and b
        % * updated for Kerdock codes:  no longer zero diagonal.
        %
        % [P,b] = bstr2Pb(M,[]);                randomly assigned P and b
        % [P,b] = bstr2Pb(M,[1 0 1 0 ...])      take bits from vector elements
        % [P,b] = bstr2Pb(M,int);               take bits from int

        % began life as a private function of genRM.m
        % SJS 6/11/07
        % SJS 28/3/08 rehashed for Kerdock codes:
        %             diagonal no longer constrained to be all-zeros
        %             total # free elements thus M(M+3)/2

            if self.re == 0
                MM = ((M^2+3*M)/2); %    MMold = ((M^2+M)/2);
                ixmid = (M+1)*M/2;
            else
                MM = 0.5*M*(M+1);
                ixmid = (M-1)*M/2;
            end

            if isempty(bstr)
                %bstr = floor(rand*2^MM);  % precision errors!
                bstr = randn(1,MM)>0;
            end
            if isscalar(bstr)
                % could use dec2bin...
                bvec = false(1,MM);
                for q = 1:MM
                    bit = rem(bstr,2); % bitand(bstr,1);
                    bvec(end-q+1) = bit;
                    bstr = floor(bstr/2);
                end
            else
                bvec = bstr;
                % should check that length is M, but what to do if it ain't?
            end


            % fprintf('MM %i (prev %i)   ix %i (prev %i)   len %i\n',...
            %     MM,MMold,ixmid,ixmidold,length(bvec));
            P = false(M);
            if self.re == 0
                ix = find(tril(ones(M),0));  % indices of lower tri, including diag
            else
                ix = find(tril(ones(M),-1)); % doesnt include the diagonal
            end
            P(ix) = bvec(1:ixmid);
            P = P | P';  % make symmetric
            b = bvec(ixmid+1:end);

            end
        


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function out = findoutliers(self,dat,mth)

        % findoutliers  Find outliers(外れ値) in a single data vector.
        %
        % foo = findoutliers(dat,mth)
        %       dat must be a vector.
        %
        % foo = nonzero where dat element was an outlier
        %       where possible, sign of foo indicates "direction" of outlier
        %
        % mth = method:
        %       1   = 3 sigmas from the mean
        %       2   = quartile test, Mendenhall & Sincich quartiles
        %       2.5 = quartile test, Tukey quartiles
        %
        % see  http://mathforum.org/library/drmath/view/52720.html

            if nargin<2 | isempty(mth)
                mth = 2;
            end
            ndat = length(dat);

            switch floor(mth)
                case 1
                    % 3 standard deviations from mean
                    if max(size(dat))<=1
                        out = zeros(size(dat));
                        return
                    else
                        sd = max(std(dat),eps);
                    end

                    mu = mean(dat);
                    demu = abs(dat-mu)/sd;
                    out = demu>3;

                    % introduce sign in order to tell if greater or lesser.
                    out = out.*sign(dat-mu);

                case 2
                    [sdat,ix] = sort(dat);
                    [foo,undoix] = sort(ix);  % for unsorting
                    %pctile = (1:ndat)/ndat;

                    % compute quartiles
                    switch mth-floor(mth)
                        case 0
                            % Mendenhall and Sincich method
                            L = ceil(0.25*(ndat+1));
                            U = floor(0.75*(ndat+1));
                            LQ = sdat(L);
                            UQ = sdat(U);
                        case .5
                            % Tukey method
                            LQ = median(sdat(1:ceil(ndat/2)));
                            UQ = median(sdat(ceil((ndat+1)/2):ndat));
                    end

                    IQR = UQ-LQ;
                    out = (sdat>UQ+1.5*IQR) - (sdat<LQ-1.5*IQR);
                    out = out(undoix);
                    %fprintf('findoutliers:  LQ %g  UQ %g  IQR %g  no %g\n',LQ,UQ,IQR,sum(out~=0))

                otherwise
                    error(['no such method:  ' int2str(mth)])
            end
        end

    end
end