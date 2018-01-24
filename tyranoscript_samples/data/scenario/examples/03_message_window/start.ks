;====================================
; 03_メッセージウィンドウをカスタマイズする　03_message_window
;====================================

;メッセージウィンドウを標準のものに変更
[position layer=message0 page=fore width=800 height=240 top=380 left=70 ]
[position layer=message0 page=fore frame="none" margint="25" marginl="50" marginr="70" marginb="60"]

;メッセージウィンドウを表示
[layopt layer="message0" visible=true]

[chara_show name="yuri" left=350 top=60]


テキストを表示するエリアは自分の好きなようにカスタマイズすることが可能です[p]
今はノーマルの状態。メッセージウィンドウの大きさを全画面表示にしてみるね[p]

[position layer=message0 page=fore width=800 height=540 top=20 left=70 margint="25" marginl="25" marginr="25" marginb="25" ]

どうかな[l][r]
こんなかんじゲーム途中でもでサウンドノベルゲーム風に変更することができますよ[l][r]
もとに戻しますね[p]

[position layer=message0 page=fore frame="none" width=800 height=240 top=380 left=70 margint="25" marginl="50" marginr="70" marginb="60"]
あとは、色や透明度を変えてみる事もできます。[p]

[position layer=message0 color=blue margint="25" marginl="50" marginr="70" marginb="60" ]
どうでしょう。[p]

[position layer=message0 color=green margint="25" marginl="50" marginr="70" marginb="60" ]
ゲームに合わせて、最適なメッセージウィンドウを作ってみてね。[p]

[position layer=message0 color=black margint="25" marginl="50" marginr="70" marginb="60" ]
さらに、自前のメッセージウィンドウを適用することも簡単にできます。[p]

[position layer=message0 page=fore frame="message_window/frame_01.png" width=800 height=240 top=380 left=70 margint="25" marginl="50" marginr="70" marginb="60"]
こんな風にしたり[p]

[position layer=message0 page=fore frame="message_window/frame_02.png" width=800 height=240 top=380 left=70 margint="50" marginl="50" marginr="70" marginb="60"]
こんな雰囲気に変更したり[p]
ゲームの場面によって、切り替えても面白いかもしれませんね。[p]
この柔軟性がティラノスクリプトの特徴です[p]

[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]

このゲームのスクリプトコードは丸ごとダウンロードできるからぜひとも参考にしてくださいね[p]
ファイルの場所はscenario/examples/03_message_window だよ！[p]

[jump storage="select.ks" target="select" ]


