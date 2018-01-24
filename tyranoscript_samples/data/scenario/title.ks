;==============================
; 冒頭の説明画面
;==============================

;テキストエリアを表示する
[bg storage="room.jpg"]
[layopt layer="message0" visible=true]

;キャラクター定義
[chara_new name="yuri" storage="chara/yuri_normal.png" jname="ゆり"]

;表情の登録
[chara_face name="yuri" face="defiantly" storage="chara/yuri_defiantly.png"]
[chara_face name="yuri" face="shy" storage="chara/yuri_shy.png"]
[chara_face name="yuri" face="staring_eyes" storage="chara/yuri_staring_eyes.png"]
[chara_face name="yuri" face="anger" storage="chara/yuri_anger.png"]

[chara_show name="yuri" top=60 left=330]

このゲームはティラノスクリプトの動作サンプル集です[p]

[chara_mod name="yuri" face="staring_eyes"]

本ゲームのスクリプトコードはすべてダウンロードできます。[p]
コメントがタップリ入っているコードなので[p]
ゲーム制作の上で、参考になると思います。[p]

;選択画面へ移動
[jump storage="select.ks"]


