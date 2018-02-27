;=============================================
;
;CGモード仮実装
;
;=============================================

*Start
;destroyマクロ
[destroy]
[bg time="700" storage="room.jpg"]
;locate 表示位置の指定
[locate x=350 y=300]
;button設置 初めから
[button width=200 height=200 graphic="azami4.jpg" target="*backtitle"]
[s]
*backtitle
[destroy]
[image layer="1" width=500 height=500 y=100 pos=center storage="azami4.jpg"]
[l]
[jump target=*Start]
[s]