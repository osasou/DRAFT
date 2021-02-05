1/27
結果．

   "EbN0"    "20"    "dB"    "BER"    "0.0014688"    "prop_packet"    "0.02709"    "h_dist"    "0.014765"

    "EbN0"    "25"    "dB"    "BER"    "0.0011886"    "prop_packet"    "0.02207"    "h_dist"    "0.011661"

    "EbN0"    "30"    "dB"    "BER"    "0.0011473"    "prop_packet"    "0.021257"    "h_dist"    "0.010933"


filename =

    "tests/user_num3EbN030r0m8p0trials100000"


    "EbN0"    "20"    "dB"    "BER"    "0.0014551"    "prop_packet"    "0.02692"    "h_dist"    "0.014572"

    "EbN0"    "25"    "dB"    "BER"    "0.0011755"    "prop_packet"    "0.021907"    "h_dist"    "0.011483"

    "EbN0"    "30"    "dB"    "BER"    "0.0011381"    "prop_packet"    "0.02128"    "h_dist"    "0.010932"


filename =

    "tests/user_num3EbN030r0m8p0trials100000"

    "EbN0"    "20"    "dB"    "BER"    "0.001495"    "prop_packet"    "0.027647"    "h_dist"    "0.014781"

    "EbN0"    "25"    "dB"    "BER"    "0.001182"    "prop_packet"    "0.021927"    "h_dist"    "0.011642"

    "EbN0"    "30"    "dB"    "BER"    "0.0011405"    "prop_packet"    "0.021343"    "h_dist"    "0.011284"


filename =

    "tests/user_num3EbN030r0m8p0trials100000"

1/26
DRAFT8_0をコピー
m=8,userを6でやってみる．多分すごい悪そう




1/13
DRAFT_8_0をコピー
rankをself.mにしてシミュレーションを100000000 一億やりたい

1/9

DRAFT_6_1のコピー
Pを限定しないで20,25,30dBで
やろうと思ったけど，2^44の3条だから厳しい．

→ Pを限定して，20,25,30dBで どのPの限定の仕方が一番良いor悪いかを調べる
→ one_slot_6_1をコピーしてone_slot_8_0でやる！


rank差は気にせず，全て異なる行列Pをとる時の雑音無しの最後の値

    "EbN0"    "30"    "dB"    "BER"    "0.0065876"    "prop_packet"    "0.0723"

  8 列から 9 列

    "h_dist"    "0.010816"


filename = 

    "tests/user_num3EbN030r0m8p0trials10000"

rank差は気にせず，全て異なる行列Pをとる時の雑音無し＋フェージング無し．
すごい悪い結果．

  1 列から 7 列

    "EbN0"    "30"    "dB"    "BER"    "0.090668"    "prop_packet"    "0.99963"

  8 列から 9 列

    "h_dist"    "0.30125"


filename = 

    "tests/user_num3EbN030r0m8p0trials10000"

全てrank差が8になるようにし，sigmaを無しにしたとき(フェージングのみ)の最後の値．
  1 列から 7 列

    "EbN0"    "30"    "dB"    "BER"    "0.0034888"    "prop_packet"    "0.0363"

  8 列から 9 列

    "h_dist"    "0.0051678"


filename = 

    "tests/user_num3EbN030r0m8p0trials10000"


1/6

これはPを限定してやった結果
普通にKmeans++した．
BERも追加した．
次はPを限定しないでやるか...
あと，EbN0も20,25,30くらいでやるか．

  1 列から 8 列

    "EbN0"    "20"    "dB"    "BER"    "0.0074395"    "prop_packet"    "0.077433"    "h_dist"

  9 列

    "0.012602"

  1 列から 8 列

    "EbN0"    "22"    "dB"    "BER"    "0.0051395"    "prop_packet"    "0.0532"    "h_dist"

  9 列

    "0.0078034"

  1 列から 8 列

    "EbN0"    "24"    "dB"    "BER"    "0.0043057"    "prop_packet"    "0.045"    "h_dist"

  9 列

    "0.0067006"

  1 列から 8 列

    "EbN0"    "26"    "dB"    "BER"    "0.0035348"    "prop_packet"    "0.036867"    "h_dist"

  9 列

    "0.0055424"

  1 列から 8 列

    "EbN0"    "28"    "dB"    "BER"    "0.0031832"    "prop_packet"    "0.034567"    "h_dist"

  9 列

    "0.0051491"

  1 列から 8 列

    "EbN0"    "30"    "dB"    "BER"    "0.0029371"    "prop_packet"    "0.032167"    "h_dist"

  9 列

    "0.004985"


filename = 

    "tests/user_num3EbN030r0m8p0trials10000"



1/5
K-means++が理想的な状態のとき（必ずうまくクラスタリングできるとき）
の結果を示したい．
BERも出す．
とりあえずできた！次で元のideal EM Algoでない時のBERを出していこう．


    "EbN0"    "20"    "dB"    "BER"    "0.003986"    "prop_packet"    "0.067033"    "h_dist"    "0.011903"

    "EbN0"    "22"    "dB"    "BER"    "0.002901"    "prop_packet"    "0.049567"    "h_dist"    "0.008912"

    "EbN0"    "24"    "dB"    "BER"    "0.0023337"    "prop_packet"    "0.039367"    "h_dist"    "0.0070993"

    "EbN0"    "26"    "dB"    "BER"    "0.0019487"    "prop_packet"    "0.032767"    "h_dist"    "0.005532"

    "EbN0"    "28"    "dB"    "BER"    "0.001646"    "prop_packet"    "0.027467"    "h_dist"    "0.0048182"

    "EbN0"    "30"    "dB"    "BER"    "0.001674"    "prop_packet"    "0.027633"    "h_dist"    "0.0043637"

BERを2^8で割る前

    "EbN0"    "20"    "dB"    "BER"    "1.0205"    "prop_packet"    "0.067033"    "h_dist"    "0.011903"

    "EbN0"    "22"    "dB"    "BER"    "0.74283"    "prop_packet"    "0.049567"    "h_dist"    "0.008912"

    "EbN0"    "24"    "dB"    "BER"    "0.59743"    "prop_packet"    "0.039367"    "h_dist"    "0.0070993"

    "EbN0"    "26"    "dB"    "BER"    "0.49887"    "prop_packet"    "0.032767"    "h_dist"    "0.005532"

    "EbN0"    "28"    "dB"    "BER"    "0.42147"    "prop_packet"    "0.027467"    "h_dist"    "0.0048182"

    "EbN0"    "30"    "dB"    "BER"    "0.42867"    "prop_packet"    "0.027633"    "h_dist"    "0.0043637"


filename = 

    "tests/user_num3EbN030r0m8p0trials10000"


DRAFT_5_0のコピー

2021/1/4
Pを限定してやってみる DRAFT_5_0からやる

結果 → Pは違うものを使っている方が性能が良かった．

"EbN0"    "20"    "dB"    "prop_packet"    "0.075633"    "h_dist"    "0.011749"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.054767"    "h_dist"    "0.0083155"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.043233"    "h_dist"    "0.0069321"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.037633"    "h_dist"    "0.0055233"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.032867"    "h_dist"    "0.0049738"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.030367"    "h_dist"    "0.0044899"


filename = 

    "tests/user_num3EbN030r0m8p0trials10000_diffe_all_P_mat"


2020/12/13
Decoder.mに付け足したproutのplotをコメントアウトにして，
DRAFTを進めていきたい．
5ユーザでm=8くらいで，パケット分けて送ってEMアルゴ使ってクラスタリングして，その結果を示したい！いや，示さないと...


2020/11/29
Decoder.mにproutを図で表示するplotを追加した．
コメントアウトにしないと，めちゃくちゃ図が出てしまうので注意．

tester.mでm=3 user_num=2でEncoder.m のメッセージを固定化したパターンをやってみた


2020/11/29(日)
とりあえず，RM符号の復号の証明をしていた．それを論文にも書いているところ．
多分，プログラムは11/8から変わってない．
一応，これで削ぎ落せるところをそぎ落としたと思う．
あとは，このプログラムを各ユーザで通信路hを固定して，EMアルゴを適用していく研究を進めていくのかな．．．

2020/11/8(日)
Decoder.mの必要なさそうなところを消していく
treeのところ消した


2020/11/6(金)
結局，真値に直して進めるのかどうかが分からなかったため，とりあえず，真値に直してやっていくことにする
Decoder.mから復号の証明をしていくしかないかな．．．

Decoder.mのすべてを確認するのは厳しいから，次のone_slot_2_0からDecoder.mの必要なさそうなところを消していく．



2020/10/24(土)
重大なことに気がついた
荒木さんとのEbN0を比べていたら，自分の方が，dBを真値に直していなかった...
その結果，ちゃんとm=9でuser3で40dBくらいまでいけばちゃんと下がる！

compare_bitsはinputのすべてのメッセージが同じで，outputの一つがinputと同じくほかが全く違う場合でも，
propfoundは1になるから，すべて違うメッセージであるというのが前提！


user_num3EbN040r0m9p0trials1000 フェージングあり複素数範囲

    "EbN0"    "0"    "dB"    "prop_packet"    "0.99767"

    "EbN0"    "2"    "dB"    "prop_packet"    "0.986"

    "EbN0"    "4"    "dB"    "prop_packet"    "0.94167"

    "EbN0"    "6"    "dB"    "prop_packet"    "0.84833"

    "EbN0"    "8"    "dB"    "prop_packet"    "0.691"

    "EbN0"    "10"    "dB"    "prop_packet"    "0.56833"

    "EbN0"    "12"    "dB"    "prop_packet"    "0.38667"

    "EbN0"    "14"    "dB"    "prop_packet"    "0.25"

    "EbN0"    "16"    "dB"    "prop_packet"    "0.16867"

    "EbN0"    "18"    "dB"    "prop_packet"    "0.10867"

    "EbN0"    "20"    "dB"    "prop_packet"    "0.067"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.047"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.029333"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.016667"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.015"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.008"

    "EbN0"    "32"    "dB"    "prop_packet"    "0.0036667"

    "EbN0"    "34"    "dB"    "prop_packet"    "0.0026667"

    "EbN0"    "36"    "dB"    "prop_packet"    "0.00033333"

    "EbN0"    "38"    "dB"    "prop_packet"    "0.0013333"

    "EbN0"    "40"    "dB"    "prop_packet"    "0.00033333"



user_num7EbN040r0m9p0trials1000

    "EbN0"    "0"    "dB"    "prop_packet"    "0.99786"

    "EbN0"    "2"    "dB"    "prop_packet"    "0.99143"

    "EbN0"    "4"    "dB"    "prop_packet"    "0.96271"

    "EbN0"    "6"    "dB"    "prop_packet"    "0.894"

    "EbN0"    "8"    "dB"    "prop_packet"    "0.80429"

    "EbN0"    "10"    "dB"    "prop_packet"    "0.65457"

    "EbN0"    "12"    "dB"    "prop_packet"    "0.48486"

    "EbN0"    "14"    "dB"    "prop_packet"    "0.31971"

    "EbN0"    "16"    "dB"    "prop_packet"    "0.214"

    "EbN0"    "18"    "dB"    "prop_packet"    "0.141"

    "EbN0"    "20"    "dB"    "prop_packet"    "0.081286"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.052571"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.037"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.027429"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.021571"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.013286"

    "EbN0"    "32"    "dB"    "prop_packet"    "0.013857"

    "EbN0"    "34"    "dB"    "prop_packet"    "0.011286"

    "EbN0"    "36"    "dB"    "prop_packet"    "0.0051429"

    "EbN0"    "38"    "dB"    "prop_packet"    "0.009"

    "EbN0"    "40"    "dB"    "prop_packet"    "0.0087143"


user_num10EbN040r0m10p0trials1000

    "EbN0"    "0"    "dB"    "prop_packet"    "0.9994"

    "EbN0"    "2"    "dB"    "prop_packet"    "0.9944"

    "EbN0"    "4"    "dB"    "prop_packet"    "0.9768"

    "EbN0"    "6"    "dB"    "prop_packet"    "0.9329"

    "EbN0"    "8"    "dB"    "prop_packet"    "0.8491"

    "EbN0"    "10"    "dB"    "prop_packet"    "0.733"

    "EbN0"    "12"    "dB"    "prop_packet"    "0.5678"

    "EbN0"    "14"    "dB"    "prop_packet"    "0.3916"

    "EbN0"    "16"    "dB"    "prop_packet"    "0.2614"

    "EbN0"    "18"    "dB"    "prop_packet"    "0.1616"

    "EbN0"    "20"    "dB"    "prop_packet"    "0.111"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.066"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.0422"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.0327"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.0195"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.0171"

    "EbN0"    "32"    "dB"    "prop_packet"    "0.0123"

    "EbN0"    "34"    "dB"    "prop_packet"    "0.0121"

    "EbN0"    "36"    "dB"    "prop_packet"    "0.0084"

    "EbN0"    "38"    "dB"    "prop_packet"    "0.0096"

    "EbN0"    "40"    "dB"    "prop_packet"    "0.006"

user_num10EbN030r0m14p0trials50

"EbN0"    "30"    "dB"    "prop_packet"    "0.02"

user_num15EbN030r0m14p0trials50

"EbN0"    "30"    "dB"    "prop_packet"    "0.021333"

user_num15EbN030r0m10p0trials10
    
"EbN0"    "30"    "dB"    "prop_packet"    "0.086667"

user_num20EbN030r0m10p0trials50
    
"EbN0"    "30"    "dB"    "prop_packet"    "0.357"

user_num18EbN030r0m10p0trials50
   
"EbN0"    "30"    "dB"    "prop_packet"    "0.28444"

user_num16EbN030r0m10p0trials50

"EbN0"    "30"    "dB"    "prop_packet"    "0.1525"

user_num15EbN030r0m10p0trials50

"EbN0"    "30"    "dB"    "prop_packet"    "0.074667"

user_num18EbN030r0m14p0trials50

"EbN0"    "30"    "dB"    "prop_packet"    "0.024444"

user_num23EbN030r0m14p0trials50

"EbN0"    "30"    "dB"    "prop_packet"    "0.024348"

user_num28EbN030r0m14p0trials50
    
"EbN0"    "30"    "dB"    "prop_packet"    "0.03"

user_num35EbN030r0m14p0trials50

"EbN0"    "30"    "dB"    "prop_packet"    "0.028"

user_num40EbN030r0m14p0trials30

"EbN0"    "30"    "dB"    "prop_packet"    "0.029167"

user_num50EbN030r0m14p0trials20

"EbN0"    "30"    "dB"    "prop_packet"    "0.118"

user_num45EbN030r0m14p0trials20

"EbN0"    "30"    "dB"    "prop_packet"    "0.056667"

user_num47EbN030r0m14p0trials20

"EbN0"    "30"    "dB"    "prop_packet"    "0.025532"

user_num49EbN030r0m14p0trials20

"EbN0"    "30"    "dB"    "prop_packet"    "0.12041"


user_num8EbN030r0m8p0trials100

    "EbN0"    "0"    "dB"    "prop_packet"    "0.99625"

    "EbN0"    "2"    "dB"    "prop_packet"    "0.98875"

    "EbN0"    "4"    "dB"    "prop_packet"    "0.9625"

    "EbN0"    "6"    "dB"    "prop_packet"    "0.90875"

    "EbN0"    "8"    "dB"    "prop_packet"    "0.87"

    "EbN0"    "10"    "dB"    "prop_packet"    "0.76625"

    "EbN0"    "12"    "dB"    "prop_packet"    "0.6475"

    "EbN0"    "14"    "dB"    "prop_packet"    "0.5225"

    "EbN0"    "16"    "dB"    "prop_packet"    "0.35"

    "EbN0"    "18"    "dB"    "prop_packet"    "0.2725"

    "EbN0"    "20"    "dB"    "prop_packet"    "0.1575"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.1175"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.1325"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.0925"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.12875"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.06"


user_num30EbN030r0m14p0trials50

    "EbN0"    "30"    "dB"    "prop_packet"    "0.018"    "h_dist"    "0.032033"


user_num15EbN030r0m10p0trials50

    "EbN0"    "0"    "dB"    "prop_packet"    "1"    "h_dist"    "0.41764"

    "EbN0"    "2"    "dB"    "prop_packet"    "0.996"    "h_dist"    "0.4045"

    "EbN0"    "4"    "dB"    "prop_packet"    "0.98133"    "h_dist"    "0.3834"

    "EbN0"    "6"    "dB"    "prop_packet"    "0.964"    "h_dist"    "0.39412"

    "EbN0"    "8"    "dB"    "prop_packet"    "0.916"    "h_dist"    "0.35933"

    "EbN0"    "10"    "dB"    "prop_packet"    "0.81333"    "h_dist"    "0.35674"

    "EbN0"    "12"    "dB"    "prop_packet"    "0.728"    "h_dist"    "0.31658"

    "EbN0"    "14"    "dB"    "prop_packet"    "0.56267"    "h_dist"    "0.28391"

    "EbN0"    "16"    "dB"    "prop_packet"    "0.37867"    "h_dist"    "0.22378"

    "EbN0"    "18"    "dB"    "prop_packet"    "0.332"    "h_dist"    "0.15831"

    "EbN0"    "20"    "dB"    "prop_packet"    "0.21867"    "h_dist"    "0.11201"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.15333"    "h_dist"    "0.10931"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.12667"    "h_dist"    "0.09354"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.112"    "h_dist"    "0.072185"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.042667"    "h_dist"    "0.032415"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.096"    "h_dist"    "0.068061"


user_num15EbN030r0m10p0trials200

    "EbN0"    "0"    "dB"    "prop_packet"    "1"    "h_dist"    "0.40901"

    "EbN0"    "2"    "dB"    "prop_packet"    "0.998"    "h_dist"    "0.42083"

    "EbN0"    "4"    "dB"    "prop_packet"    "0.99"    "h_dist"    "0.38726"

    "EbN0"    "6"    "dB"    "prop_packet"    "0.956"    "h_dist"    "0.40573"

    "EbN0"    "8"    "dB"    "prop_packet"    "0.91067"    "h_dist"    "0.38687"

    "EbN0"    "10"    "dB"    "prop_packet"    "0.84467"    "h_dist"    "0.37755"

    "EbN0"    "12"    "dB"    "prop_packet"    "0.739"    "h_dist"    "0.34114"

    "EbN0"    "14"    "dB"    "prop_packet"    "0.58233"    "h_dist"    "0.3064"

    "EbN0"    "16"    "dB"    "prop_packet"    "0.47533"    "h_dist"    "0.21974"

    "EbN0"    "18"    "dB"    "prop_packet"    "0.28333"    "h_dist"    "0.19122"

    "EbN0"    "20"    "dB"    "prop_packet"    "0.20167"    "h_dist"    "0.1298"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.16767"    "h_dist"    "0.12744"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.12"    "h_dist"    "0.082468"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.11633"    "h_dist"    "0.064629"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.071333"    "h_dist"    "0.054572"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.10367"    "h_dist"    "0.075505"


user_num15EbN040r0m10p0trials400

    "EbN0"    "0"    "dB"    "prop_packet"    "0.99983"    "h_dist"    "0.4091"

    "EbN0"    "2"    "dB"    "prop_packet"    "0.99767"    "h_dist"    "0.40397"

    "EbN0"    "4"    "dB"    "prop_packet"    "0.987"    "h_dist"    "0.41165"

    "EbN0"    "6"    "dB"    "prop_packet"    "0.95867"    "h_dist"    "0.40082"

    "EbN0"    "8"    "dB"    "prop_packet"    "0.91417"    "h_dist"    "0.38507"

    "EbN0"    "10"    "dB"    "prop_packet"    "0.84267"    "h_dist"    "0.37434"

    "EbN0"    "12"    "dB"    "prop_packet"    "0.73"    "h_dist"    "0.33931"

    "EbN0"    "14"    "dB"    "prop_packet"    "0.59067"    "h_dist"    "0.28682"

    "EbN0"    "16"    "dB"    "prop_packet"    "0.43167"    "h_dist"    "0.23876"

    "EbN0"    "18"    "dB"    "prop_packet"    "0.2875"    "h_dist"    "0.16245"

    "EbN0"    "20"    "dB"    "prop_packet"    "0.21967"    "h_dist"    "0.1275"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.16483"    "h_dist"    "0.10855"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.12133"    "h_dist"    "0.099703"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.092333"    "h_dist"    "0.067989"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.096667"    "h_dist"    "0.069368"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.092167"    "h_dist"    "0.060915"

    "EbN0"    "32"    "dB"    "prop_packet"    "0.074"    "h_dist"    "0.050941"

    "EbN0"    "34"    "dB"    "prop_packet"    "0.0745"    "h_dist"    "0.050247"

    "EbN0"    "36"    "dB"    "prop_packet"    "0.080333"    "h_dist"    "0.056513"

    "EbN0"    "38"    "dB"    "prop_packet"    "0.075667"    "h_dist"    "0.047089"

    "EbN0"    "40"    "dB"    "prop_packet"    "0.067667"    "h_dist"    "0.040447"
