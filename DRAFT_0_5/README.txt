
目標:送信メッセージを書くユーザで固定してDecodeについてデバッグしながら復号方法を理解するようにする

符号長はm=3 で 2^3 = 8bitとする

Decoder.m で　518行目 function [P,b] = bstr2Pb(self,M,bstr)内で
 % [P,b] = bstr2Pb(M,[]);                randomly assigned P and b
のようにランダムであるから
decoder.chirp_rec(Y,self.K,1)の値 recovが毎回違うことがありうる

ちなみに、通信路 h を3ユーザとも1にすると recovの値は毎回同じと思われる。
通信路 h を固定しても、1ではないと recovの値は毎回違った。

メッセージinput_bitsを固定した
row_bits = [0 0 0 0 0 0 0 1 0; 0 0 0 0 0 1 0 0 1; 1 1 1 1 1 1 1 1 1;];
            
 
A = [3.00000000000000 + 0.00000000000000i;1.00000000000000 - 2.00000000000000i;0.00000000000000 - 1.00000000000000i;0.00000000000000 - 1.00000000000000i;2.00000000000000 - 1.00000000000000i;2.00000000000000 - 1.00000000000000i;1.00000000000000 + 0.00000000000000i;-1.00000000000000 - 2.00000000000000i]
decoder = Decoder(A, 0, 3, 0, 3)
ans = decoder.chirp_rec(A,decoder.K,1)
↑これで 符号語固定、h がみんな 1 での復号がわかる

-------------------------------------------------
version_0_5

user_num = 3について、

メッセージinput_bitsを
m = 8 のとき、
258 行目の [Pout,bout,rec] = self.fPN_recursive(1,y,zeros(M),[]);
でちゃんとPとbが見つかる

m = 3 のとき、
258 行目の [Pout,bout,rec] = self.fPN_recursive(1,y,zeros(M),[]);
でPとbが見つからない
--> 266行目の [Pout,bout] = self.bstr2Pb(M,[]); でランダムで見つける
% Oh heck.  Didn't find anything.
% Make one up at random...  hopefully this will kick the signal enough
% to make something stand out next time, and this bogus component will
% be subsequently removed.
bstr2Pbのところでこんなこと言ってるし、多分性能は悪いんだろう。m = 3のとき、実際に悪いけど


1slotの復号をみたいから、
user_num = 1 においての m = 3 でやれば良い。
このとき 成功確率 prop は 1 (100%) だからさ...

user_num = 2, m = 5 だと
prop 約0.9 だったから２ユーザなら m = 5 でやろう

↑ ユーザ数変えたからem_algoはコメントアウトにしてるよー
