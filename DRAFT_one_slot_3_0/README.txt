
2021/1/3
"EbN0"    "30"    "dB"    "prop_packet"    "0.0402"    "h_dist"    "0.0072846"
filename = 

    "tests/user_num3EbN030r0m15p0trials5000"

2020/12/23
技術資料用にシミュレーションを行った．

    "EbN0"    "0"    "dB"    "prop_packet"    "0.99782"    "h_dist"    "0.64045"

    "EbN0"    "2"    "dB"    "prop_packet"    "0.98775"    "h_dist"    "0.53299"

    "EbN0"    "4"    "dB"    "prop_packet"    "0.95778"    "h_dist"    "0.4499"

    "EbN0"    "6"    "dB"    "prop_packet"    "0.88975"    "h_dist"    "0.37665"

    "EbN0"    "8"    "dB"    "prop_packet"    "0.78715"    "h_dist"    "0.31019"

    "EbN0"    "10"    "dB"    "prop_packet"    "0.65577"    "h_dist"    "0.23589"

    "EbN0"    "12"    "dB"    "prop_packet"    "0.52365"    "h_dist"    "0.17837"

    "EbN0"    "14"    "dB"    "prop_packet"    "0.38907"    "h_dist"    "0.12918"

    "EbN0"    "16"    "dB"    "prop_packet"    "0.28358"    "h_dist"    "0.093875"

    "EbN0"    "18"    "dB"    "prop_packet"    "0.21447"    "h_dist"    "0.074694"

    "EbN0"    "20"    "dB"    "prop_packet"    "0.1614"    "h_dist"    "0.059063"

    "EbN0"    "22"    "dB"    "prop_packet"    "0.12248"    "h_dist"    "0.047896"

    "EbN0"    "24"    "dB"    "prop_packet"    "0.10123"    "h_dist"    "0.043097"

    "EbN0"    "26"    "dB"    "prop_packet"    "0.0849"    "h_dist"    "0.037156"

    "EbN0"    "28"    "dB"    "prop_packet"    "0.0797"    "h_dist"    "0.035737"

    "EbN0"    "30"    "dB"    "prop_packet"    "0.067425"    "h_dist"    "0.03321"


filename = 

    "tests/user_num4EbN030r0m8p0trials10000"

2020/11/29
Decoder.mにproutを図で表示するplotを追加した．
コメントアウトにしないと，めちゃくちゃ図が出てしまうので注意．
今はコメントアウトしている．

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
