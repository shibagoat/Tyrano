;====================================
; 10_文字を使った演出を試してみよう　
;====================================

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=350]

ティラノスクリプトのVer 3.4.1 から[l][r]

文字を使った演出が簡単にできるようになっています。[p]
早速試してみるね。[p]


;テキスト効果を追加
[mtext text="ざわざわ・・" x=200 y=100 size=30 in_effect="fadeIn" time=2 out_effect="fadeOut"]
[mtext text="ざわざわ・・" x=460 y=50 size=30 in_effect="fadeIn" time=2 out_effect="fadeOut"]

どうかな。[p]
さっきみたいに、順番に表示させることもできるし[l][r]
一斉に複数の文字を表示することもできるよ[p]
こんな風に[p]
[mtext text="ざわざわ・・" x=200 y=100 size=30 wait=false in_effect="fadeIn" time=2 out_effect="fadeOut"]
[mtext text="ざわざわ・・" x=460 y=50 size=30 wait=false in_effect="fadeIn" time=2 out_effect="fadeOut"]
[mtext text="ざわざわ・・" x=560 y=100 size=30 wait=false in_effect="fadeIn" time=2 out_effect="fadeOut"]
[mtext text="ざわざわ・・" x=140 y=50 size=30 wait=true in_effect="fadeIn" time=2 out_effect="fadeOut"]

すごいざわざわ感だね。。。[p]
画面の左上にシーンが変わると同時に場所を表示してもわかりやすいよね[p]
[bg storage="rouka.jpg"]
[mtext text="廊下 １２：００" x=20 y=20 size=30 color=white wait=false in_effect="fadeInLeftBig" time=5 out_effect="fadeOut"]
[wait time=4000]

出現の方法の多彩な演出が指定できるから、きっとお気に入りのものが見つかると思うよ[p]
それじゃあ、教室に戻るね[p]

[bg storage="room.jpg"]
[mtext text="教室 １３：００" x=20 y=20 size=30 color=white wait=false in_effect="fadeInLeftBig" time=5 out_effect="fadeOut"]
[wait time=4000]

このテキスト効果は使い方によって、色々な用途が考えられるね[p]
例えば、一旦画面を黒く反転して、テキストを表示させると、、、[p]

[chara_hide name="yuri"]
[layopt layer="message0" visible=false]
[bg storage="blackscreen.png"]
[mtext text="これは昔々の物語" x=230 y=200 size=30 color=white wait=true in_effect="fadeIn" time=3 out_effect="fadeOut"]
[mtext text="ある所におじいさんとおばあさんが" x=130 y=200 size=30 color=white wait=true in_effect="fadeIn" time=3 out_effect="fadeOut"]
[mtext text="住んでいたんだよ" x=230 y=200 size=30 color=white wait=true in_effect="fadeIn" time=3 out_effect="fadeOut"]

[bg storage="room.jpg"]
[chara_show name="yuri" top=60 left=350]
[layopt layer="message0" visible=true]

ね、すごく雰囲気のある演出が簡単にできますね[p]
あと、使いみちの１つに[l][r]

エンディングのスタッフロールがあります[p]
ちょっと、試してみますね[p]

;スタッフロール

[chara_hide name="yuri"]
[layopt layer="message0" visible=false]
[bg storage="blackscreen.png"]

[image layer=0 time=1000 folder="bgimage" x=40 y=100 width=400 storage="room.jpg"]

[mtext text="Director" x=520 y=200 size=30 color=white wait=false in_effect="rotateIn" time=3000 out_effect="rotateOut"]
[wait time=500]
[mtext text="Ogawa Yuji" x=560 y=240 size=30 color=white wait=true in_effect="rotateIn" time=3000 out_effect="rotateOut"]

[wait time=3000]
[freeimage time=1000 layer=0]

[image layer=0 time=1000 folder="bgimage" x=40 y=100 width=400 storage="entrance.jpg"]

[mtext text="Scenario" x=520 y=200 size=30 color=white wait=false in_effect="rotateIn" time=3000 out_effect="rotateOut"]
[wait time=500]
[mtext text="Hasegawa Yuko" x=560 y=240 size=30 color=white wait=true in_effect="rotateIn" time=3000 out_effect="rotateOut"]

[freeimage layer=0]
[bg storage="room.jpg"]
[chara_show name="yuri" top=60 left=350]
[layopt layer="message0" visible=true]

ね、簡単にできるでしょ。[p]
スクリプトを組み合わせることで、非常に自由度の高いスタッフロールを創ることが可能です[p]

このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/10_mtext だよ！[p]

[jump storage="select.ks" target="select" ]

