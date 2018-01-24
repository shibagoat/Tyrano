;====================================
; 05_シーン切り替えを演出しよう　05_bg
;====================================

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=350]

;背景ファイルは事前に読み込んでおかないと、スムーズにならない
[preload storage="data/bgimage/room.jpg" wait=true]
[preload storage="data/bgimage/toile.jpg" wait=true]
[preload storage="data/bgimage/rouka.jpg" wait=true]

ゲームにおいてシーンの切り替えは重要です[p]
[bg storage="rouka.jpg"]
こんな風に、背景を切り替えることで物語がわかりやすくなりますね[p]
ティラノスクリプトでは、このシーンの切替においても[l][r]
標準で多彩な表現が準備されています[p]
じゃあ、順番に見ていこうね[p]
まず、切り替え方なんだけど、素早く切り替えたり[p]
[bg storage=room.jpg time=100]
ゆっくり、じらすように切り替えることもできます[p]
[bg storage=toile.jpg time=4000]
切り替え時間はミリ秒単位でしていできるんだよ[p]
次に切り替わり方の演出を見ていこうね[p]

最初にcrossfade（標準）[p]
[bg storage="rouka.jpg" method="crossfade"]
次はexplode[p]
[bg storage="room.jpg" method="explode"]
slide[p]
[bg storage="toile.jpg" method="slide"]
blind[p]
[bg storage="rouka.jpg" method="blind"]
bounce[p]
[bg storage="room.jpg" method="bounce"]
clip[p]
[bg storage="rouka.jpg" method="clip"]
drop[p]
[bg storage="toile.jpg" method="drop"]
fold[p]
[bg storage="room.jpg" method="fold"]
puff[p]
[bg storage="rouka.jpg" method="puff"]
scale[p]
[bg storage="toile.jpg" method="scale"]
shake[p]
[bg storage="room.jpg" method="shake"]
size[p]
[bg storage="rouka.jpg" method="size"]

ね。すごいでしょ[p]
もちろん、切り替え時間との組み合わせでつかえるから[p]
幅広いシーンに対応できそうだね[p]

このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/05_bg だよ！[p]

[jump storage="select.ks" target="select" ]


