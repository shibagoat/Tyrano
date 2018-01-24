;====================================
; 02_選択肢によって、パラメータを設定しよう　02_param
;====================================

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=330]

ここでは、キャラクターのパラメータを管理する方法を見て行きましょう[p]
選択肢によってキャラクターの好感度が変化していって[p]
最終的に伝説の樹の下で告白されるかどうか！？[p]
みたいなやつです。[p]

じゃあ、はじめてみようか。[p]
え、わたしを攻略するのよ [p]

;最初は１００ポイント付与
[eval exp="f.chara_point=100"]

ねぇねぇ、髪型変えてみたんだけど、どうかな？[r]

[link target=*select_1_1]【１】よく似あってるよ[endlink][r]
[link target=*select_1_2]【２】ワカメみたいだね[endlink][r]
[s]

*select_1_1
[cm]
ふふ、ありがとう[p]
;２０ポイント付与
[eval exp="f.chara_point=f.chara_point+20"]
@jump target=select_1_common

*select_1_2
[cm]
;２０ポイントマイナス
[eval exp="f.chara_point=f.chara_point-20"]
・・・・[p]

*select_1_common

;このファイルの最後に定義した、好感度によってキャラクターの表情を変化させるマクロ
@call target=check_face

現在の好感度は「[emb exp="f.chara_point"]」ポイントです[p]


よかったらこの後、カラオケ行かない？[r]

[link target=*select_2_1]【１】いいね。一緒に行こう！[endlink][r]
[link target=*select_2_2]【２】そんなことより、野球しようぜ[endlink][r]
[s]

*select_2_1
[cm]
ふふ、ありがとう[p]
;２０ポイント付与
[eval exp="f.chara_point=f.chara_point+20"]
@jump target=select_2_common

*select_2_2
[cm]
;２０ポイントマイナス
[eval exp="f.chara_point=f.chara_point-20"]
・・・・[p]

*select_2_common
@call target=check_face


現在の好感度は「[emb exp="f.chara_point"]」ポイントです[p]


どうかな、こんなかんじで好感度を管理すれば[p]
最終的にグッドエンドとバッドエンドを調整したり[p]
特定のキャラクタールートへ入っていくといったゲームが簡単にできますね[p]

このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/02_param だよ！[p]

[jump storage="select.ks" target="select" ]

[s]


;好感度によってキャラクターの表情を変えるサブルーチン

*check_face
	;現在の好感度によって、キャラクターの表情を変更する
	
	[if exp="f.chara_point > 120" ]
		[chara_mod name="yuri" face="shy"]
	[elsif exp="f.chara_point >= 100"]
		[chara_mod name="yuri" face="default"]
	[elsif exp="f.chara_point >=80"]
		[chara_mod name="yuri" face="anger"]
	[else]
		[chara_mod name="yuri" face="staring_eyes"]
	[endif]
	
	;returnするためには callで呼び出す必要がある 
	;jumpはコールスタックに残らない
	
	[return]

;=============

