
; == title.ks ==============================================

; あいさつ画面を作成するシナリオファイルです。

; ==========================================================



; ----------------------------------------------------------
*Start
; ----------------------------------------------------------


; [bg] 背景を表示します。
; 時間は700ミリ秒、使用する画像はrouka.jpg。
[bg time="700" storage="title.jpg"]

;クリック待ち
[l]

;locate 表示位置の指定
[locate x=350 y=300]
;button設置 初めから
[button graphic="button_title_start.gif" storage="select.ks"]

[locate x=350 y=250]
;button設置 CGモード
[button graphic="button_title_cg.gif" storage="cg.ks"]

;ゲーム入力待ち
[s]
