function [p_bits1, p_bits2, p_bits3, b_bits1, b_bits2, b_bits3] = decide_p_b(re, m, B, set_bits)
disp("decide_pb")
set = set_bits;
b_bits1 = rand(set,1) > 0.5;
b_bits2 = rand(set,1) > 0.5;
b_bits3 = rand(set,1) > 0.5;

% 行列Pの選択 全てのユーザの選択するPがみんな違うとき+rankkの判断もしている．
      set_rank = m;
      p_bits1 = rand(B - m, 1) > 0.5; 
      fflag = 0;
      P_mat = makeP_mat(re,m,p_bits1);
      while fflag == 0
          tmp = rand(B - m, 1) > 0.5;
          P_tmp = makeP_mat(re,m,tmp);
          rankk = rank(P_mat - P_tmp);
          if (rankk == set_rank)
              p_bits2 = tmp;
              fflag = 1;
          end
      end

      fflag = 0;
      P_mat = makeP_mat(re,m,p_bits1);
      P_mat2 = makeP_mat(re,m,p_bits2);
      while fflag == 0
          tmp = rand(B - m, 1) > 0.5;
          P_tmp = makeP_mat(re,m,tmp);
          rankk = rank(P_mat - P_tmp);
          rankk2 = rank(P_mat2 - P_tmp);
          if (rankk == set_rank && rankk2 == set_rank)
              p_bits3 = tmp;
              fflag = 1;
          end
      end
                 

end

function [P] = makeP_mat(re,m,bits)
        % generates a P and b from a bit string
        %
        % bits      vector of bits
        %
        % P     symettric real matrix
        % b     real vector

            if (re==0)
                nMuse = m*(m+1)/2;
            else
                nMuse = m*(m-1)/2;
            end
            basis = makeDGC(re,m);
            Pbits = bits(1:nMuse); %bits[1:3]の前半分
            
            P = mod( sum(basis(:,:,find(Pbits)),3), 2);
            %sum(A,3):行列Aの３番目の次元に沿って和を計算する。つまり、行列の足し算なだけ
        end
