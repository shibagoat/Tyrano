;====================================
; 07_プレイヤーに名前を入力してもらいましょう　
;====================================

;テキストエリアを表示する
[layopt layer="message0" visible=true]
[chara_show name="yuri" top=60 left=350]

ティラノスクリプトは、プレイヤーに名前などを入力してもらう仕組みを作ることができます[p]

じゃあ早速、あなたの名前をおしえてくれるかな？[p]

;テキストボックスの表示

*show_input_yourname

[edit left=340 top=100 name="sf.yourname"]

[locate x=340 y=200]
[button target="*sbm_name" name=button_name_kettei graphic="kettei.gif" ]

[s]

*sbm_name
[commit]
[cm]

;名前が未入力の場合
[if exp="sf.yourname==''"]
    ちゃんと名前おしえてよ?[l]
    @jump target=*show_input_yourname
[endif]

[emb exp=sf.yourname]さん。これからよろしくね。
[l][cm]

これで主人公の名前を入力してもらって[p]
ゲームのキャラクターに自分の名前をしゃべってもらうゲームがつくれますね[p]


このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/07_input だよ！[p]

[jump storage="select.ks" target="select" ]

