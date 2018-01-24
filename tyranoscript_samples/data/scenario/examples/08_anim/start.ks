;====================================
; 08_アニメーションを活用してみよう　
;====================================

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=350]

アニメーションを効果的に使うと、ゲームを華やかに演出することができます[p]
ティラノスクリプトでは、豊富なアニメーションが用意されているので[p]
効果的に使っていきましょう。[p]

じゃあ、最初にちょっと移動してみるね[p]
[anim name="yuri" left = 40 ]
[wa]

次は右へ移動するよ[p]
[anim name="yuri" left = 800 ]
[wa]

すごいでしょー。[p]
[anim name="yuri" left = 350 ]
[wa]

キャラクターをアニメーションするだけじゃなくて[p]
画像・文字・ボタン　など色んなものをアニメーションさせることができます[p]

[glink name="glink1" text="選択肢１" size=20 width=500 x=-1000 y=100 exp="tf.selected='選択肢１'" target=glink_select2 ]
[glink name="glink2" text="選択肢２" size=20 width=500 x=1000 y=200 exp="tf.selected='選択肢２'" target=glink_select2 color=blue]
[glink name="glink3" text="選択肢３" size=20 width=500 x=-1000 y=300 exp="tf.selected='選択肢３'" target=glink_select2 color=pink]
[glink name="glink4" text="選択肢４" size=20 width=500 x=1000 y=400 exp="tf.selected='選択肢４'" target=glink_select2 color=orange]

@anim name="glink1" left=150 time=500 method="easeInSine"
[wait time=100]
@anim name="glink2" left=150 time=500 method="easeInSine"
[wait time=100]
@anim name="glink3" left=150 time=500 method="easeInSine"
[wait time=100]
@anim name="glink4" left=150 time=500 method="easeInSine"

[s]

*glink_select2

選択肢も、こんなふうに登場すると、ちょっとかっこいいよね[p]

つぎは、キャラクターを揺らすアニメーションを試してみるよ[p]

;プラグイン読み込み
[call storage="examples/08_anim/chara_shake.ks"]

;開始
[chara_shake name="yuri" count=5 swing=20 time=100]

ね。すごいでしょ[p]

;透明度を上げる処理を開始、wa を指定しないので、会話の中で徐々に透明になっていく演出ができる
しかも、アニメーションできるのは位置だけじゃなくて[p]
大きさや透明度、色なんかもアニメーションできるから[p]
いろいろ、試してみてね[p]
[anim name="yuri" opacity= 50 time=3000]
[wa]
あれーーー、わたしなんか、薄くなってきてる〜 >< [p]
もどれ〜[p]
[anim name="yuri" opacity= 250 time=100]
ほ、、たすかった。[p]

そして、ティラノスクリプトには強力な独自アニメーションエンジンが搭載されていて[p]
キーフレームによる、ド派手な演出も可能です。[p]

;------------keyframe の定義
[keyframe name="animation1"]
[frame p=20% x="100" ]
[frame p=40% x="-100" ]
[frame p=60% y=100 ]
[frame p=80% y=-400 scale=0.5 rotate="360deg" ]
[frame p=100% scale=1 y="300" rotate="0deg"]
[endkeyframe]

;---------アニメーションの実行 5秒かけてキーフレームアニメーションを実行する
[kanim name="yuri" keyframe="animation1" time="5000" ]

このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/08_anim だよ！[p]

[jump storage="select.ks" target="select" ]

