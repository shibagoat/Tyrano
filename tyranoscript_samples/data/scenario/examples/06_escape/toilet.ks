;このcmでクリッカブル領域を抹殺
[cm]

[back storage=escape/4.jpg time="1000"]


*clickable
@show_move_button

[layopt layer="message0" visible=false]

;水
[clickable x=63 y=315 width=393 height=121 opacity=0 mouseopacity=40 border="1px:dashed:black" color=pink target=*room_1]

;タオル
[clickable x=668 y=180 width=269 height=178 opacity=0 mouseopacity=40 border="1px:solid:black" color=pink target=*room_2]



[s]

*room_1
[layopt layer="message0" visible=true]
洗面台だ[p]
水は出るようだ[p]
@jump target=*clickable

*room_2
[layopt layer="message0" visible=true]
タオルがかかっている[p]
使われた痕跡はないな[p]

@jump target=*clickable



[s]

*move_left
@clearfix name="move_button"
@jump storage="examples/06_escape/door.ks"

*move_right
@clearfix name="move_button"
@jump storage="examples/06_escape/room.ks" 
