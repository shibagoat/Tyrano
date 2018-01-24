;====================================
; 06_クリッカブルを使って脱出ゲームをつくろう　06_escape
;====================================

;ボタン移動などの共通マクロ呼出し
@call storage="examples/06_escape/common.ks"

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=350]

;背景ファイルは事前に読み込んでおかないと、スムーズにならない
;配列を渡すと、まとめてプリロードすることもできます。
[iscript]
f.preload_images = ["data/bgimage/escape/1.jpg","data/bgimage/escape/2.jpg","data/bgimage/escape/3.jpg","data/bgimage/escape/4.jpg","data/bgimage/escape/5.jpg"];
[endscript]

[preload storage=&f.preload_images]

ティラノスクリプトでは、クリッカブルを使って[p]
脱出ゲームのようなものも簡単につくることができるよ[p]
じゃあ、すこしの間眠ってもらうね[p]

[chara_hide name="yuri"]

;脱出ゲーム用のフラグ
[iscript]
sf.items={};
sf.items["小さな鍵"] = 0;

[endscript]

[back storage=escape/5.jpg time="1"]

はっ、ここはどこだろう[p]
ホテル？のように見えるけど[p]
まぁいいや。[l][r]
とりあえず、外に出てフロントで聴いてみよう[p]

[back storage=escape/3.jpg time="1000" method="slide"]
ガチャ　ガチャ[p]
あれー。開かないな[p]
鍵が閉まってる様子でもないのに。[p]
部屋の中を調べてみるか。。。[p]
気になる場所をクリックして調べてください[p]

;部屋に移動
[jump storage=examples/06_escape/room.ks]


 




このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/06_escape だよ！[p]

[call storage="select.ks" target="select" ]


