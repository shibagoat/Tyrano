
;ティラノスクリプト　テクニックサンプル


;メニューボタン非表示
[hidemenubutton]


;ゲームに必要なライブラリ読み込み
[call storage="tyrano.ks"]

;メッセージレイヤは最初は非表示
[layopt layer="message0" visible=false]

;メッセージレイヤの定義
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer="message0" color="white" size=26 x=100 y=390]
[chara_config ptext="chara_name_area"]


;タイトルの設定
[title name="ティラノスクリプト　テクニックサンプル"]


;タイトル画面表示
[jump storage="title.ks"]

;--------------------------

[s]




