
version 0.9
2020/7/7(月)

version0.8-------------------
パラメータを変えてやってみた。
JPGにある感じでやった

5ユーザのとき、
EbN0 = 18, m = 12 (codelength = 2^12 = 4000くらいbit), (B = 12*15/2 = 90 bit) でできる
EbN0 = 30, m = 9 (codelength = 2^9 = 512bit), (B = 9*12/2 = 54 bit) でもできる

次は全てまとめて送った時とパケットで分けた時の評価をしたい
-------------------------------


version0.9

5ユーザで

1, m = 12の1slot → 1slotで4096bits messageは90bits分
2, m = 9の8slot  → 1slotで512bits 計4096bits messageは計432bits分
