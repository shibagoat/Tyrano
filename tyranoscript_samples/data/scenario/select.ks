
;==============================
; サンプル選択画面
;==============================

[iscript]
	f.current_page=0;

[endscript]

*select


;chara_new で登録した画像はdefaultという名前で指定可能
[chara_mod name="yuri" face="shy"]
[anim name="yuri" left=640 time=1000]


[layopt layer="message0" visible=false]
[cm]
[iscript]
	f.page_str = "page"+f.current_page;
[endscript]

[jump target=&f.page_str]

*page0

[glink text="選択肢の色々な表示方法" size=20 width=500 x=30 y=40 color=blue target=exe_game exp="tf.selected='01_bunki'"]
[glink text="選択肢によって、パラメータが変化するゲームを作る" size=20 width=500 x=30 y=100 color=blue target=exe_game exp="tf.selected='02_param'"]
[glink text="メッセージウィンドウをカスタマイズする" size=20 width=500 x=30 y=160 color=blue target=exe_game exp="tf.selected='03_message_window'"]
[glink text="テキストを装飾する" size=20 width=500 x=30 y=220 color=blue target=exe_game exp="tf.selected='04_text_deco'"]
[glink text="場面の切り替えを効果的に演出する" size=20 width=500 x=30 y=280 color=blue target=exe_game exp="tf.selected='05_back'"]
[glink text="クリッカブルを使って脱出ゲームを作る" size=20 width=500 x=30 y=340 color=blue target=exe_game exp="tf.selected='06_escape'"]
[glink text="プレイヤーに自分の名前を入力してもらおう" size=20 width=500 x=30 y=400 color=blue target=exe_game exp="tf.selected='07_input'"]
[glink text="アニメーションでゲームに動きを与えよう" size=20 width=500 x=30 y=460 color=blue target=exe_game exp="tf.selected='08_anim'"]
[jump target="*common"]

*page1
[glink text="ゲーム画面に、セーブやロードボタンなどを設置する" size=20 width=500 x=30 y=40 color=blue target=exe_game exp="tf.selected='09_role_button'"]
[glink text="テキストを使った演出を行なう" size=20 width=500 x=30 y=100 color=blue target=exe_game exp="tf.selected='10_mtext'"]
[jump target="*common"]

;*page2
;[glink text="クリッカブルを使って脱出ゲームを作る" size=20 width=500 x=30 y=400 color=blue]
;[glink text="クリッカブルを使って脱出ゲームを作る" size=20 width=500 x=30 y=460 color=blue]
;[jump target="*common"]

*common
[glink text="＜＜前のページ" target="backpage" size=20 width=140 x=30 y=520 color=pink]
[glink text="＞＞次のページ" target="nextpage" size=20 width=140 x=410 y=520 color=pink]

[s]

*nextpage
[iscript]
	f.current_page++;
	if(f.current_page == 2){
		f.current_page =0;
	}

[endscript]
[jump target=*select]


*backpage
[iscript]
if(f.current_page > 0){
	f.current_page--;
}
[endscript]
[jump target=*select]

*exe_game

[iscript]
tf.target_storage ="examples/"+ tf.selected + "/start.ks";
[endscript]

[cm]

;キャラクター退場させる
[chara_hide name=yuri]
[showmenubutton]
[jump storage=&tf.target_storage]

[s]

