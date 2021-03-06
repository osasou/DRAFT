classdef Encoder
%Class responsible for encoding chirps - contains all functons pertaining to encoding
    properties
        r               % 0, 1 or 2; 2^r patches
        re              % logical: false(0)=complex chirps, true(1)=real chirps
        m               % size of chirp code (2^m is length of codewords in each slot), recommend m = 6, 7 or 8
        p               % 2^p slots require p<=(m-r)(m-r+3)/2-1 for complex
                        % p<=(m-r)(m-r+1)/2-1 for real
        K               % number of messages
        EbN0            % energy-per-bit (Eb/N0)
        input_bits      % raw input bitstring
        B               % number of bits being encoded
        patches         % number of patches
    end

    methods
        function self = Encoder(re,m,p,K,EbN0,input_bits)
            addpath('utils');
            self.r = 0;
            self.re = re;
            self.m = m;
            self.p = p;
            self.K = K;
            self.EbN0 = EbN0;
            self.input_bits = input_bits;
            self.patches=2^self.r;
            if (re==0)
                 self.B = m*(m+3)/2 + p;
            else
                 self.B = m*(m+1)/2 + p;
            end
        end

        function [self,bits] = generate_random_bits(self, p_bits1, p_bits2, p_bits3, b_bits1, b_bits2, b_bits3)
        % generates some random bits to pass into encoder
        % row 行 : B(number of bits being encoded)
        % column 列 : K(number of messages)
        
            % 0 ~ 15のbits
%               A = [0:2^self.B-1]
%               b = de2bi(A);
%               bits = flip(b);
%               bits = flip(b, 2);
%               bits = bits.';

%                 encoder = Encoder(0,3,0,3,200,NaN)
%                 A = [0:2^encoder.B-1]
%                 b = de2bi(A);
%                 bits = flip(b);
%                 bits = flip(b, 2)
%                 bits = bits.';
%                 [P, b] = encoder.makePb(bits(:,1))
%                 rm = encoder.gen_chirp(P,b.')
%                  これをコマンドウィンドウで打つと確認ができる
%                 全ての符号語の行列Φを出すときは  Phi = mk_all_Pb(encoder,bits)  を使う
              
        flag = 0;
            while flag == 0
                rng = ('seed');
               
%                 bits = rand(self.B, self.K) > 0.5; 

%                   理想の実装 //////////////////
%                 tmp_bit = zeros(self.B - 8, 1);
%                 k = 2;
%                 for i=0:(self.m/2)-1
%                     tmp_bit(k:k+(self.m - i) - 2) = bits(k:k+(self.m - i) - 2);
%                     k = k + self.m - i;
%                 end
%                 tmp_bit = bits - tmp_bit;
%                 ////////////////////////////

% %                行列Pの選択 全てのユーザの選択するPがみんな違うとき+rankkの判断もしている．
%                   set_rank = self.m;
%                   p_bits1 = rand(self.B - self.m, 1) > 0.5; 
%                   fflag = 0;
%                   P_mat = makeP_mat(self,p_bits1);
%                   while fflag == 0
%                       tmp = rand(self.B - self.m, 1) > 0.5;
%                       P_tmp = makeP_mat(self,tmp);
%                       rankk = rank(P_mat - P_tmp);
%                       if (rankk == set_rank)
%                           p_bits2 = tmp;
%                           fflag = 1;
%                       end
%                   end
%   
%                   fflag = 0;
%                   P_mat = makeP_mat(self,p_bits1);
%                   P_mat2 = makeP_mat(self,p_bits2);
%                   while fflag == 0
%                       tmp = rand(self.B - self.m, 1) > 0.5;
%                       P_tmp = makeP_mat(self,tmp);
%                       rankk = rank(P_mat - P_tmp);
%                       rankk2 = rank(P_mat2 - P_tmp);
%                       if (rankk == set_rank && rankk2 == set_rank)
%                           p_bits3 = tmp;
%                           fflag = 1;
%                       end
%                   end
%                  
%                  行列Pが同じにならないようにする場合 rank関係なく
%                  p_bits1 = rand(self.B - self.m, 1) > 0.5;
%                  p_bits2 = p_bits1;
%                  while isequal(p_bits2,p_bits1)
%                     p_bits2 = rand(self.B - self.m, 1) > 0.5;
%                  end
%                  p_bits3 = p_bits1;
%                  while(isequal(p_bits3,p_bits1) || isequal(p_bits3,p_bits2))
%                     p_bits3 = rand(self.B - self.m, 1) > 0.5;
%                  end
% %                   行列Pの選択 ３ユーザみんな同じとき
%                 p_bits1 = rand(self.B - self.m, 1) > 0.5;
%                 p_bits2 = p_bits1;
%                 p_bits3 = p_bits1;
                
% %                   行列Pの選択 ２ユーザみんな同じとき
%                 p_bits1 = rand(self.B - self.m, 1) > 0.5;
%                 p_bits2 = p_bits1;
%                 fflag = 0;
%                  P_mat = makeP_mat(self,p_bits1);
%                  P_mat2 = makeP_mat(self,p_bits2);
%                  while fflag == 0
%                      tmp = rand(self.B - self.m, 1) > 0.5;
%                      P_tmp = makeP_mat(self,tmp);
%                      rankk = rank(P_mat - P_tmp);
%                      rankk2 = rank(P_mat2 - P_tmp);
%                      if (rankk == self.m && rankk2 == self.m)
%                          p_bits3 = tmp;
%                          fflag = 1;
%                      end
%                  end
%                 ベクトルbの選択 完全ランダム
%                 b_bit1 = rand(self.m, 1) > 0.5;
%                 b_bit2 = rand(self.m, 1) > 0.5;
%                 b_bit3 = rand(self.m, 1) > 0.5;
%                 

%                 残りのbitをランダムで作成．
                resi_size = self.m - size(b_bits1,1);
                residue_bits1 = rand(resi_size, 1) > 0.5;
                residue_bits2 = rand(resi_size, 1) > 0.5;
                residue_bits3 = rand(resi_size, 1) > 0.5;
                bits1 = [p_bits1; b_bits1; residue_bits1];
                bits2 = [p_bits2; b_bits2; residue_bits2];
                bits3 = [p_bits3; b_bits3; residue_bits3];
                bits = [bits1 bits2 bits3];
                
%               同じメッセージを選ばない処理 uniqueで同じメッセージがあったら１つにしている．
%               そして，そのsizeをみることで，同じメッセージがないかを確認している．
                bits_trans = bits.';
                [C] = unique(bits_trans(:,1:self.B),'rows');
                if size(C,1) == self.K
                    flag = 1;
                end
                % 注意 For Debug
%                 flag = 1;
            end
            self.input_bits=bits;
% %             ここで符号語を設定
%              row_bits = [0 0 0 0 0 0 0 1 0; 0 0 0 0 0 1 0 0 1; 1 1 1 1 1 1 1 1 1;];
%              bits = row_bits.';
%              self.input_bits = row_bits.';
%             ここまで

%              row_bits = [0 0 0 1 0 0 0 0 0; 0 0 0 1 0 0 0 0 0;];
%              bits = row_bits.';
%                self.input_bits = row_bits.';
        end


        function [Y, h_all] = chirrup_encode(self, without_h, without_sigma)

        %chirrup_encode  Generates K random messages and performs CHIRRUP encoding
        %
        % Y            Y{p} is a 2^m x 2^p matrix of measurements for patch p
        % input_bits   B x K matrix of the K B-bit messages
        % parity       parity check codes generated in the tree encoding
        %
        % No. of messages is B = 2^r*[(m-r-p)(m-r-p+3)/2+p-1]-sum(l)  for complex
        %                          B = 2^r*[(m-r-p)(m-r-p+1)/2+p-1)-sum(l) for real
        %
        % AJT (12/9/18)

            global h_all
            
            %generate random messages
            patch_bits = self.input_bits.';
            
            %generate measurements for each patch
            for patch = 1:self.patches
%                 sigma = sqrt(self.patches*2^self.m/(self.B*self.EbN0));
%                 sigma = sqrt(self.patches*2^self.m/(self.B*10^(self.EbN0*0.1)));
                sigma = sqrt(self.patches*2^self.m/(2*self.B*10^(self.EbN0*0.1)));                
                [Y{patch}, h_all] = self.sim_from_bits(sigma,patch_bits(:,:,patch),without_h,without_sigma);
            end
        end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function [Y, h_all] = sim_from_bits(self,sigma,bits,without_h,without_sigma)

        % sim_from_bits  Generates binary chirp measurements（大きさ） from bits
        % sigma      SD of noise: sigma = sqrt(patches*2^m/(B*EbN0))
        % bits       k x 2^m matrix of bits to encode
        %
        % Y          length-2^m vector of measurements
        %
        % AJT (12/9/18)
        h_all = [];
        alpha = 1.0;
        circle_r = 1;
        active_user_num = self.K;
        
            Y = zeros(2^self.m,2^self.p);
            h_all = [];
            %Yは2^p個あるslotsの各受信語を示している
            
            %p=0なので、zeros(2^m,1)となる
            for k = 1:self.K %the number of active user で回す
                [x,y] = random_circle(circle_r, 1);
                d_dash = abs(x).^2 + abs(y).^2;
                d = sqrt(d_dash);
                d = 1.0;
                
                bits1 = [bits(k,:)];
                
%                 disp("Encode");
                [Pee1,bee1] = self.makePb(bits1);
                
                %generate binary chirp vector for each slot
                rm1 = self.gen_chirp(Pee1,bee1);

                h = normrnd(0,0.5)+1i*normrnd(0,0.5);
%                  h = 1 + 1i;

%                 h = 1i;
                 if (k == 1)
                      h = - 0.5 - 0.5i;
                 elseif (k == 2)
                     h = -0.2 + 0.8i;
                 elseif (k == 3)
                     h = 0.3 + 0.5i;
                 elseif (k == 4)
                     h = 0.5 - 0.5i;
                 elseif (k == 5)
                     h = -0.5 + 0.5i;
%                 elseif (k == 6)
%                     h = 1;
%                 elseif (k == 7)
%                     h = 0.7 + 0.1i;
%                 elseif (k == 8)
%                     h = 0.3 - 1.4i;
%                 elseif (k == 9)
%                     h = 1.5 + 0.6i;
%                 else 
%                     h = -0.2 + 0.3i;
                 end 
                if (without_h == 1)
                    h = 1;
                end
                h_all=[h_all, h];
                
                Y(:,1) = Y(:,1)+h*rm1*1/(d^alpha);
            end
            if (without_sigma == 1)
                sigma = 0; %これで雑音ありとなしを判断
            end
            %add noise (Gaussian for real, Complex Gaussian for complex)
            if (self.re==0)
                %B = repmat(A,n) は、行と列の次元に A のコピーを n 個含む配列を返します。
                Y = Y + repmat(sigma*(randn(2^self.m,1)+1i*randn(2^self.m,1)),[1 2^self.p]);
            else
                Y = Y + repmat(sigma*randn(2^self.m,1),[1 2^self.p]);
            end
        end

        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        function [P] = makeP_mat(self,bits)
        % generates a P and b from a bit string
        %
        % bits      vector of bits
        %
        % P     symettric real matrix
        % b     real vector

            if (self.re==0)
                nMuse = self.m*(self.m+1)/2;
            else
                nMuse = self.m*(self.m-1)/2;
            end
            basis = makeDGC(self.re,self.m);
            Pbits = bits(1:nMuse); %bits[1:3]の前半分
            
            P = mod( sum(basis(:,:,find(Pbits)),3), 2);
            %sum(A,3):行列Aの３番目の次元に沿って和を計算する。つまり、行列の足し算なだけ
        end

        function [P,b] = makePb(self,bits)
        % generates a P and b from a bit string
        %
        % bits      vector of bits
        %
        % P     symettric real matrix
        % b     real vector

            if (self.re==0)
                nMuse = self.m*(self.m+1)/2;
            else
                nMuse = self.m*(self.m-1)/2;
            end
            basis = makeDGC(self.re,self.m);
            Pbits = bits(1:nMuse); %bits[1:3]の前半分
            
            P = mod( sum(basis(:,:,find(Pbits)),3), 2);
            %sum(A,3):行列Aの３番目の次元に沿って和を計算する。つまり、行列の足し算なだけ
            b = bits(nMuse+1:nMuse+self.m);
            % bits[4:6]の後ろ半分
        end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    end

    methods(Static)

            function rm = gen_chirp(P,b)
            % generates a read-muller code from an input P and b

                M = length(b);
                rm = zeros(2^M,1);
                a = zeros(M,1);
                for q = 1:2^M
                    sum1 = a'*P*a;
                    sum2 = b*a;
                    rm(q) = i^sum1 * (-1)^sum2;
                    % next a
                    for ix = M:-1:1
                        if a(ix)==1
                            a(ix)=0;
                        else
                            a(ix)=1;
                            break;
                        end
                    end
                end
            end
    end


end