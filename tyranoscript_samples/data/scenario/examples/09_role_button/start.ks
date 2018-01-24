;====================================
; 09_メッセージ画面に各種機能ボタンを設置しよう　
;====================================

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=350]

ティラノスクリプトでは、画面の右下に[l][r]
セーブやロードなどの機能にアクセスできるボタンが標準でついています[p]
ただ、ゲーム画面から直接セーブ画面を呼び出したり、スキップできるようにカスタマイズしたい場合もありますよね。[p]
ティラノスクリプトでは、オリジナルのメニューを作ることができます[p]
じゃあ、ボタンを追加してみるね[p]

;各種ボタン追加
;make.ksにも全く同じ処理を追加しておく必要があります。
;ロード時にボタンが効かなくなってしまいます。

[button name="role_button" role="skip" graphic="button/skip.gif" x=350 y=400]
[button name="role_button" role="save" graphic="button/save.gif" x=430 y=400]
[button name="role_button" role="load" graphic="button/load.gif" x=510 y=400]
[button name="role_button" role="bglog" graphic="button/log.gif" x=590 y=400]
[button name="role_button" role="window" graphic="button/close.gif" x=670 y=400]
[button name="role_button" role="menu" graphic="button/menu.gif" x=750 y=400]

画面にボタンが追加されたね。[p]

画面の右下のボタンは要らないから消しておこう[p]
@hidemenubutton

このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/09_role_button だよ！[p]

@clearfix name="role_button"

[jump storage="select.ks" target="select" ]

