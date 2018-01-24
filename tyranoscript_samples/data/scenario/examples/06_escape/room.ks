
;このcmでクリッカブル領域を抹殺
[cm]
[back storage=escape/5.jpg time="1000"]

*clickable
@show_move_button

[layopt layer="message0" visible=false]

;テレビ
[clickable x=45 y=270 width=196 height=133 opacity=0 mouseopacity=40 border="1px:dashed:black" color=pink target=*room_1]

;時計
[clickable x=176 y=119 width=69 height=65 opacity=0 mouseopacity=40 border="1px:solid:black" color=pink target=*room_2]

;絵
[clickable x=258 y=123 width=107 height=153 opacity=0 mouseopacity=40 border="1px:solid:black" color=pink target=*room_3]

;よくわからないもの
[clickable x=488 y=31 width=82 height=84 opacity=0 mouseopacity=40 border="1px:solid:black" color=pink target=*room_4]

;冷蔵庫
[clickable x=418 y=294 width=66 height=99 opacity=0 mouseopacity=40 border="1px:solid:black" color=pink target=*room_5]

;雑誌
[clickable x=387 y=499 width=84 height=61 opacity=0 mouseopacity=40 border="1px:solid:black" color=pink target=*room_6]


[s]

*room_1
[layopt layer="message0" visible=true]
テレビだ[p]
今の時代にブラウン管とはめずらしいな[p]
@jump target=*clickable

*room_2
[layopt layer="message0" visible=true]
時計だ[p]
3:12を指している[p]

@jump target=*clickable

*room_3
[layopt layer="message0" visible=true]
絵画のようだ[p]
作者のサインが入っている[p]
「Piel Or norLs」[p]

@jump target=*clickable


*room_4
[layopt layer="message0" visible=true]

[if exp="sf.items['小さな鍵'] == 1"]

	小さな鍵穴がみえる[p]
	さっき見つけた鍵を差し込んでみますか？[r]
	
	
	[link target=*key_yes]【１】はい[endlink][r]
	[link target=*key_no]【２】いいえ[endlink][r]

[s]

*key_yes
;エンディングへ
@jump storage="examples/06_escape/end.ks"

*key_no 
やめておこう[p]

[else]

	なんだこれ[p]
	使い方がよくわからない機器が配置してある[p]
	よく見ると小さな鍵穴のようなものがあるな[p]

[endif]


@jump target=*clickable

*room_5
[layopt layer="message0" visible=true]
冷蔵庫だ[p]
しかし、中身は空っぽのようだ[p]

@jump target=*clickable

*room_6
[layopt layer="message0" visible=true]

旅行雑誌のようだ[p]
特に参考になる情報はないな[p]

@jump target=*clickable


[s]


*move_left
;ボタンを削除
@clearfix name="move_button"
@jump storage="examples/06_escape/toilet.ks" 

*move_right
@clearfix name="move_button"
@jump storage="examples/06_escape/door.ks" 
