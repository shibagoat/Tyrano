;このcmでクリッカブル領域を抹殺
[cm]

[back storage=escape/1.jpg time="1000"]

*clickable
@show_move_button
[layopt layer="message0" visible=false]

;ドア
[clickable x=490 y=97 width=154 height=354 opacity=0 mouseopacity=40 border="1px:dashed:black" color=pink target=*room_1]

;スイッチ
[clickable x=679 y=147 width=63 height=56 opacity=0 mouseopacity=40 border="1px:solid:black" color=pink target=*room_2]

;ベッドの隙間
[clickable x=650 y=487 width=302 height=27 opacity=0 mouseopacity=40 border="1px:solid:black" color=pink target=*room_3]


[s]

*room_1
[layopt layer="message0" visible=true]
奥にドアがみえる[p]
どうやったら開くことができるんだろう[p]
@jump target=*clickable

*room_2
[layopt layer="message0" visible=true]
電気のスイッチだ[p]

@jump target=*clickable

*room_3

[layopt layer="message0" visible=true]
ベッドの隙間がある[p]

;すでに鍵をもってる場合はクリッカブルに戻る
[if exp="sf.items['小さな鍵'] == 1"]
	@jump target=*clickable
[endif]

おや？何か光ったな[p]

[layopt layer="1" visible=true]
[image name="small_key" layer=1 storage="escape/small_key.png" x=-200 y=200]
[anim name="small_key" left=400 time=1000]
[wa]
小さな鍵をみつけた[p]
[anim name="small_key" left=1000 time=1000]
[wa]


[iscript]
	sf.items["小さな鍵"] = 1;
[endscript]

どこかで使えるんだろうか[p]

@jump target=*clickable

[s]

*move_left
@clearfix name="move_button"
@jump storage="examples/06_escape/room.ks"

*move_right
@clearfix name="move_button"
@jump storage="examples/06_escape/toilet.ks" 
