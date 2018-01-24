;====================================
; 01_多彩な選択肢を表示しよう　01_bunki
;====================================

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=330]

ティラノスクリプトでは、選択肢によって、物語を分岐したり、パラメータを上下させることが可能です[p]
しかも、選択肢の表現方法も豊富にあるので、いろいろ見て行きましょう[p]
最初はもっともシンプルで簡単なテキストのみの選択肢です。[p]
今日は朝ごはん食べた？[r]

[link target=*breakfast_yes]【１】はい[endlink][r]
[link target=*breakfast_no]【２】いいえ[endlink][r]

[s]

;「はい」が選択された
*breakfast_yes
[cm]
おー。食べたんだ。えらいえらい[p]
[jump target="breakfast_common"]

;「いいえ」が選択された
*breakfast_no
[cm]
ちゃんと食べなきゃだめだよー[p]

;共通ルートへ戻るためのラベル
*breakfast_common
どうかな。シンプルでわかりやすいね。[p]
次は、ボタンで表示する形式を試してみるね[p]

[glink text="選択肢１" size=20 width=500 x=120 y=100 exp="tf.selected='選択肢１'" target=glink_select ]
[glink text="選択肢２" size=20 width=500 x=120 y=200 exp="tf.selected='選択肢２'" target=glink_select color=blue]
[glink text="選択肢３" size=20 width=500 x=120 y=300 exp="tf.selected='選択肢３'" target=glink_select color=pink]
[glink text="選択肢４" size=20 width=500 x=120 y=400 exp="tf.selected='選択肢４'" target=glink_select color=orange]
[s]

*glink_select

;glinkタグでexp を指定（クリックされた時に実行されるスクリプト）
;tf.selected 選択された値を代入することができる

「[emb exp="tf.selected"]」が選択されました。[p]
こんな風にボタンごとに色を変えることもできるよ。[p]
選択肢の登場の仕方を工夫してみたり[p]

[glink name="glink1" text="選択肢１" size=20 width=500 x=-1000 y=100 exp="tf.selected='選択肢１'" target=glink_select2 ]
[glink name="glink2" text="選択肢２" size=20 width=500 x=1000 y=200 exp="tf.selected='選択肢２'" target=glink_select2 color=blue]
[glink name="glink3" text="選択肢３" size=20 width=500 x=-1000 y=300 exp="tf.selected='選択肢３'" target=glink_select2 color=pink]
[glink name="glink4" text="選択肢４" size=20 width=500 x=1000 y=400 exp="tf.selected='選択肢４'" target=glink_select2 color=orange]

;上記で追加した選択肢ボタンをアニメーションで表示する
@anim name="glink1" left=150 time=500
[wait time=100]
@anim name="glink2" left=150 time=500
[wait time=100]
@anim name="glink3" left=150 time=500
[wait time=100]
@anim name="glink4" left=150 time=500

[s]

*glink_select2
選択肢の位置なんかも自由に変更できるからぜひ試して見てね。[p]
あとは、画像を選択肢として利用することも簡単にできるよ。[p]
次の女の子の打ちどのこが一番かな？[p]

[chara_hide name="yuri"]
[layopt layer="message0" visible=false]

[button graphic="chara_select/fuyuko_laughter.png" enterimg="chara_select/fuyuko_lonely.png" target=*chara_select x=100 y=100 ]
[button graphic="chara_select/koto_anger.png" enterimg="chara_select/koto_normal.png" target=*chara_select x=360 y=100 ]
[button graphic="chara_select/shikine_shocked.png" enterimg="chara_select/shikine_shy.png" target=*chara_select x=640 y=100 ]

[s]

*chara_select

[cm]
[chara_show top=60 name="yuri"]
[layopt layer="message0" visible=true]
へーーー、そうなんだ〜[p]
画像ファイルを使うと多彩な表現ができますよね[p]
カーソルが重なったら画像を切り替えたり、音を鳴らす。[p]
もしくはクリックした時に演出を加えることもできるからね[p]
詳しくはタグリファレンスをチェックしてみよう。[p]

このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/01_bunki だよ！[p]

[jump storage="select.ks" target="select" ]


