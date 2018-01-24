;====================================
; 04_テキストを装飾しよう　04_text_deco
;====================================

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=350]

ティラノスクリプトでは、テキストも場面に合わせて[l][r]
多彩に装飾することが可能です[p]
じゃあ、順番に見ていこうね[p]

;テキストの色を変更する
[font size=40]文字のサイズを変更したり[p]
[resetfont]
[font color="0xFAEBD7"]テキスト[resetfont]の[font color="pink"]色[resetfont]を[font color="green"]自由[resetfont]に[font color="0xAFEEEE"]変更[resetfont]したり[p]
[ruby text=る]ル[ruby text=び]ビを[ruby text=ふ]振ることだって[ruby text=かん]簡[ruby text=たん]単にできます[l][r]
文字表示速度を調整することもできます。[p]
[font size=40]いくぞ！[wait time=1000]
[cm]
[delay speed=430]か〜め〜は〜め〜
[wait time=1000]
[delay speed=10]はぁーーーーーーーーーーーーーーーーーーーーーー！
[resetfont]
[delay speed=20][p]
ふぅ。[l][r]
ね、ティラノスクリプトでは文字の表現だけでもすごく強力な表現ができるでしょ！[p]
テキストの中に、画像ファイルの挟むこともできるわよ[graph storage="present.png"][p]
効果的にテキストを使って、ストーリーを盛り上げてね[p]


このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/04_text_deco だよ！[p]

[jump storage="select.ks" target="select" ]


