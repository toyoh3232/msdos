髟YN                                                                                                                                いくつかの選択肢から選ぶためのプロンプトを表示します.

 CHOICE [/C[:]選択肢] [/N] [/S] [/T[:]c,nn] [文字列]

 /C[:]選択肢  選択肢として有効なキーを指定します. 既定値は YN です.
/N           プロンプトの終わりに選択肢と ? を表示しません.
/S           選択キーの大文字/小文字を区別します.
/T[:]c,nn    nn秒経過した後の選択肢の既定値を c に設定します.
文字列       表示するプロンプト文字列を指定します.

ERRORLEVEL はユーザーが選択肢の中から押すキーのオフセットに設定されます.

 コマンドラインのスイッチが違います. 正しくは:
     CHOICE: 選択肢のスイッチの文法が違います. 正しくは: /C[:]選択肢
 CHOICE: タイムアウトの文法が違います. 正しくは: Tc,nn または T:c,nn
 CHOICE: タイムアウト時の既定値が指定された(または既定値の)選択肢にありません.
 CHOICE: プロンプト文字列は 1つだけ有効です. 正しくは:
     CHOICE: 4.0以降のバージョンの MS-DOS が必要です.
 Waits for the user to choose one of a set of choices.

 CHOICE [/C[:]choices] [/N] [/S] [/T[:]c,nn] [text]

 /C[:]choices Specifies allowable keys. Default is YN
/N           Do not display choices and ? at end of prompt string.
/S           Treat choice keys as case sensitive.
/T[:]c,nn    Default choice to c after nn seconds
text         Prompt string to display

ERRORLEVEL is set to offset of key user presses in choices.

 Invalid switch on command line. Expected form:
     CHOICE: invalid choice switch syntax. Expected form: /C[:]choices
 CHOICE: Incorrect timeout syntax.  Expected form Tc,nn or T:c,nn
 CHOICE: Timeout default not in specified (or default) choices.
 CHOICE: only one prompt string allowed. Expected Form:
     CHOICE: requires MS-DOS version 4.0 or later.
                                                                                                                                            �ｰｴ0ﾍ!<ｻｵ鐇tｻﾜ靼ｰ�鰕ｸeｻ��ｹ 欣ｿ�ﾍ!Gﾄ=&�ｸ +ﾃ｣�ι�>���ｾ� ｬ<u髷</tQ< t�<	t�ｿ�= u <"uｲ"�ｲ/ｪ�<tﾓ:ﾂtｪF��</tﾇF�ﾄｻy鞦tｻ�鏤ｻｿ勒tｻ"鎰ｰ�颪ｬ鏤<?t:<Cte<Nu鮑 <Tu鮖 <Su� ｻm陝tｻ｢�ｻｿ闡tｻ"�
ｰ��ｻ�閙tｻ�顆ｻｿ鑵tｻ"韜ｻ�鐫tｻY鞆ｰ�鰓ｿ�<:uF�< t*<	t&<t"</t顏uｻ｡�.tｻﾗ隗ｰ�髷ｪF��ﾒｰ ���t鴉�ｻ｡�tｻﾗ閨ｰ�騙ﾆ 鰔��<:uF�<tN</tJ< tF<	tB｢F�<,u8F�<0r1<9w-��｢F�<0s髓�<9v驪��ｺ
 �竓��ﾃ｢F騏�ｻ�闥tｻ�ｰ��ﾆ饂��>t��｢ｾ�< t
�顏 �F��ｿｹ� ��ｮtｻ)鍠tｻ^霖 ｰ�鮑 ｻ�5tｻ隶 �>u)ｿｴｲ[ﾍ!ｴ�ﾍ!G�= tｴｲ,ﾍ!��ｴｲ]ﾍ!ｴｲ?ﾍ!�> t-ｴ,ﾍ!�6ｴﾍ!��κ uｴ,ﾍ!86t鼈6�u燿�ｴﾍ!閼 uｴﾍ!ｰ ｿ�>t錵 �= tｮt
��ｴｲﾍ!�ﾒｴ諌ﾍ!ｴｲﾍ!ｴｲ
ﾍ!��局ｴLﾍ!PWRｴ3���� tﾍ!G��Z_XﾃSW<ar<zw, �<�rﾄ>�筋2�+�&�_[ﾃ    PV.ﾅ6ﾆ.�>ﾈ uPｸ cﾍ!X.�6ﾆ.�ﾈ�< t:r:Dv	θ���$ ^XﾃPSｸO3ﾛﾍ/��､[Xﾃ