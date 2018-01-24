;
; キャラクターを揺らすプラグイン v1.00
; シケモクMK
;
; ＜導入すると、以下の機能が追加されます＞
;　キャラクターを指定して使用することで、キャラクターに効果を指定することができます。
;  name属性を指定できるものに対してなら、どのタグに対しても使用できます
;
; ＜使い方＞
;   chara_shake/chara_shake.ks を読み込んで下さい。
;   ゲーム初期化部分で呼び出しておくのが望ましいです。
;
;   プラグイン読み込み
;   [call storage=“chara_shake/chara_shake.ks"]
;
;   開始
;　　[chara_shake name="yuko" count=5 swing=20 time=100]
;
; ＜注意点＞
;   ティラノスクリプトVer2.92 で動作保証
;
; ＜パラメータ＞
;name:エフェクトを与えたいキャラクター名を指定してくだｓだい
;count:ここで指定した回数分、揺れます
;time:１回の揺れにかかる時間をミリ秒で指定します。つまり大きくするとゆっくり揺れます
;swing:揺れ幅を指定できます。大きい数値にすると大きく揺れます

;キャラクターにアニメーションをつける
[macro name="chara_shake"]

[iscript]

tf.swing_1 = mp.swing;
tf.swing_2 = mp.swing*2*-1;

[endscript]

[keyframe name="shake"]
[frame p=0% x="0" ]
[frame p=25% x="&tf.swing_1" ]
[frame p=75% x="&tf.swing_2" ]
[frame p=100% x="&tf.swing_1" ]
[endkeyframe]


[kanim name="%name" keyframe="shake" count=%count|5 time=%time|500]

[endmacro]
