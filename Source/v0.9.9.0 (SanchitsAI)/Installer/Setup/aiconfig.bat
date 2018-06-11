@ECHO OFF
title Sanchit's AI Setup
color 0f
echo Hi, am your personal assistant called... well I don't have a name yet! Hopefully in the future I will be getting one!
pause
echo Anyway, enough about me, now time for you to anwser some questions!
echo What would you like me to call you? (Sorry, but you can not change your name later on due to some restrictions. Also no spaces please.)
set "name="
SET /P NAME=
echo set userid=%NAME% >> C:\Users\%USERNAME%\ai\data\%USERNAME%.bat
echo Hi %NAME%, it is a pleasure to be your assistant!
title %NAME%'s Assistant (By Sanchit)                                                                                                        
echo Next, Colour Preference
echo Do you wish to change the colour of the assistant background/text? (Y/N)
SET /P ANSW.=
if /I "%ANSW.:~0,1%" neq "Y" goto nocolour
:colourpick
title %NAME%'s Assistant - Colour Picker (By Sanchit)                                                                                        
cls
echo What would you like to change the color to?
echo.
echo 0 = Black		8 = Gray
echo 1 = Blue 		9 = Light Blue
echo 2 = Green 		A = Light Green
echo 3 = Aqua 		B = Light Aqua
echo 4 = Red 		C = Light Red
echo 5 = Purple 		D = Light Purple
echo 6 = Yellow 		E = Light Yellow
echo 7 = White 		F = Bright White
echo.
echo Type the color combination you would like. Default is 0f
echo First Number/Letter is for the Background while the second is for the Text.
set /p colourcho=
color %colourcho%
echo Do you wish to choose this colour choice? (Y/N)
SET /P ANSW.=
if /I "%ANSW.:~0,1%" neq "Y" goto colourpick
echo set colour=%colourcho% >> C:\Users\%USERNAME%\ai\data\%USERNAME%.bat
cls
:nocolour
title %NAME%'s Assistant (By Sanchit)                                                                                                       
echo Do you want me to start when your computer turns on? (Y/N)
echo If you don't know, just choose yes.
SET /P ANSW.=
if /I "%ANSW.:~0,1%" neq "Y" goto startno
cls
color f0
echo Finishing Installation, Just Wait A Bit
echo                                                   ___,------, 
echo              _,--.---.                         __,--'         / 
echo            ,' _,'_`._ \                    _,-'           ___,] 
echo           ;--'       `^-.                ,'        __,---'   ]] 
echo         ,'               \             ,'      _,-'          ]] 
echo        /                  \         _,'     ,-'              ]] 
echo       :                    .      ,'     _,'                 ]: 
echo       [                    :     `.    ,'                    ]: 
echo       [           _,-      ]       `-,'                      :: 
echo      ,'____ ,  ,-'  `.   , ],         `.                     : \ 
echo     ,'    `-,'       ) / \/ \          \                     : : 
echo      [      _\   o _,-'    '-.           `.                    \ \ 
echo       `o_,-'  `-,-' ____   ,` )-.______,'  `.                   : : 
echo        \-\    _,---'    `-. -'.\  `.  /     `.                  \  \ 
echo         / `--'             `.   \   \:        \                  \,.\ 
echo        (              ____,  \  ]    \\        \                 :\ \\ 
echo         )         _,-'    `   ] ]   ] \        \                 \\_\\ 
echo        /      _,-'            ] ]  ,'-`._      _\                 \,' 
echo        `-----' ]`-.           ;/   (__ ,' `-. _;-'`\           _,--' 
echo      ,'        ]   `._     _,' \-._/  Y    ,-'      \      _,-' 
echo     /        _ ]      `---'    :,-]  [    `     _,-'\_,--'   \ 
echo    :          `]       \`-._   /  ]   '     `.,-' `._`         \ 
echo    [           _\_    _,\/ _,-']                     `-._       \ 
echo    :   ,-         `.-'_,--'    \                         `       \ 
echo    [ ,'           ,--'      _,--\           _,                    : 
echo     )         .    \___,---'   ) `-.____,--'                      ] 
echo    _\    .     `    ]]        :            \                      ; 
echo  ,'  \    `.    )--' ;        [             `-.                  / 
echo [     \     ;--^._,-'         [                `-._            _/_\ 
echo \    ,'`---'                  [                    `--._____,-'_'  \ 
echo  \_,'                         `._                          _,-'     ` 
echo                             ,-'  `---.___           __,---' 
echo                           ,'             `---------' 
echo                         ,' 
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaiautostart -OutFile C:\Users\%USERNAME%\ai\data\autostart.exe
:startno
cls
color f0
echo Finishing Installation, Just Wait A Bit
echo                                                   ___,------, 
echo              _,--.---.                         __,--'         / 
echo            ,' _,'_`._ \                    _,-'           ___,] 
echo           ;--'       `^-.                ,'        __,---'   ]] 
echo         ,'               \             ,'      _,-'          ]] 
echo        /                  \         _,'     ,-'              ]] 
echo       :                    .      ,'     _,'                 ]: 
echo       [                    :     `.    ,'                    ]: 
echo       [           _,-      ]       `-,'                      :: 
echo      ,'____ ,  ,-'  `.   , ],         `.                     : \ 
echo     ,'    `-,'       ) / \/ \          \                     : : 
echo      [      _\   o _,-'    '-.           `.                    \ \ 
echo       `o_,-'  `-,-' ____   ,` )-.______,'  `.                   : : 
echo        \-\    _,---'    `-. -'.\  `.  /     `.                  \  \ 
echo         / `--'             `.   \   \:        \                  \,.\ 
echo        (              ____,  \  ]    \\        \                 :\ \\ 
echo         )         _,-'    `   ] ]   ] \        \                 \\_\\ 
echo        /      _,-'            ] ]  ,'-`._      _\                 \,' 
echo        `-----' ]`-.           ;/   (__ ,' `-. _;-'`\           _,--' 
echo      ,'        ]   `._     _,' \-._/  Y    ,-'      \      _,-' 
echo     /        _ ]      `---'    :,-]  [    `     _,-'\_,--'   \ 
echo    :          `]       \`-._   /  ]   '     `.,-' `._`         \ 
echo    [           _\_    _,\/ _,-']                     `-._       \ 
echo    :   ,-         `.-'_,--'    \                         `       \ 
echo    [ ,'           ,--'      _,--\           _,                    : 
echo     )         .    \___,---'   ) `-.____,--'                      ] 
echo    _\    .     `    ]]        :            \                      ; 
echo  ,'  \    `.    )--' ;        [             `-.                  / 
echo [     \     ;--^._,-'         [                `-._            _/_\ 
echo \    ,'`---'                  [                    `--._____,-'_'  \ 
echo  \_,'                         `._                          _,-'     ` 
echo                             ,-'  `---.___           __,---' 
echo                           ,'             `---------' 
echo                         ,' 
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaishortcut -OutFile C:\Users\%USERNAME%\ai\data\shortcut.exe
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaishortdata -OutFile C:\Users\%USERNAME%\ai\data\shortdata.exe
powershell -Command START C:\Users\%USERNAME%\ai\data\shortdata.exe
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\%NAME%'s AI.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%USERPROFILE%\ai\data\shortcut.exe" >> %SCRIPT%
echo oLink.IconLocation = "%USERPROFILE%\ai\data\favicon.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
cls
color f0
echo Thanks %NAME%, now you are all set to go. A shortcut to the AI has been created in your start menu.
echo It is titled "%NAME%'s AI". Press enter to go to your new AI!!!!
echo                                        .....'',;;::cccllllllllllllcccc:::;;,,,''...'',,'..
echo                             ..';cldkO00KXNNNNXXXKK000OOkkkkkxxxxxddoooddddddxxxxkkkkOO0XXKx:.
echo                       .':ok0KXXXNXK0kxolc:;;,,,,,,,,,,,;;,,,''''''',,''..              .'lOXKd'
echo                  .,lx00Oxl:,'............''''''...................    ...,;;'.             .oKXd.
echo               .ckKKkc'...'',:::;,'.........'',;;::::;,'..........'',;;;,'.. .';;'.           'kNKc.
echo            .:kXXk:.    ..       ..................          .............,:c:'...;:'.         .dNNx.
echo           :0NKd,          .....''',,,,''..               ',...........',,,'',,::,...,,.        .dNNx.
echo          .xXd.         .:;'..         ..,'             .;,.               ...,,'';;'. ...       .oNNo
echo          .0K.         .;.              ;'              ';                      .'...'.           .oXX:
echo         .oNO.         .                 ,.              .     ..',::ccc:;,..     ..                lXX:
echo        .dNX:               ......       ;.                'cxOKK0OXWWWWWWWNX0kc.                    :KXd.
echo      .l0N0;             ;d0KKKKKXK0ko:...              .l0X0xc,...lXWWWWWWWWKO0Kx'                   ,ONKo.
echo    .lKNKl...'......'. .dXWN0kkk0NWWWWWN0o.            :KN0;.  .,cokXWWNNNNWNKkxONK: .,:c:.      .';;;;:lk0XXx;
echo   :KN0l';ll:'.         .,:lodxxkO00KXNWWWX000k.       oXNx;:okKX0kdl:::;'',;coxkkd, ...'. ...'''.......',:lxKO:.
echo  oNNk,;c,'',.                      ...;xNNOc,.         ,d0X0xc,.     .dOd,           ..;dOKXK00000Ox:.   ..''dKO,
echo 'KW0,:,.,:..,oxkkkdl;'.                'KK'              ..           .dXX0o:'....,:oOXNN0d;.'. ..,lOKd.   .. ;KXl.
echo ;XNd,;  ;. l00kxoooxKXKx:..ld:         ;KK'                             .:dkO000000Okxl;.   c0;      :KK;   .  ;XXc
echo 'XXdc.  :. ..    '' 'kNNNKKKk,      .,dKNO.                                   ....       .'c0NO'      :X0.  ,.  xN0.
echo .kNOc'  ,.      .00. ..''...      .l0X0d;.             'dOkxo;...                    .;okKXK0KNXx;.   .0X:  ,.  lNX'
echo  ,KKdl  .c,    .dNK,            .;xXWKc.                .;:coOXO,,'.......       .,lx0XXOo;...oNWNXKk:.'KX;  '   dNX.
echo   :XXkc'....  .dNWXl        .';l0NXNKl.          ,lxkkkxo' .cK0.          ..;lx0XNX0xc.     ,0Nx'.','.kXo  .,  ,KNx.
echo    cXXd,,;:, .oXWNNKo'    .'..  .'.'dKk;        .cooollox;.xXXl     ..,cdOKXXX00NXc.      'oKWK'     ;k:  .l. ,0Nk.
echo     cXNx.  . ,KWX0NNNXOl'.           .o0Ooldk;            .:c;.':lxOKKK0xo:,.. ;XX:   .,lOXWWXd.      . .':,.lKXd.
echo      lXNo    cXWWWXooNWNXKko;'..       .lk0x;       ...,:ldk0KXNNOo:,..       ,OWNOxO0KXXNWNO,        ....'l0Xk,
echo      .dNK.   oNWWNo.cXK;;oOXNNXK0kxdolllllooooddxk00KKKK0kdoc:c0No        .'ckXWWWNXkc,;kNKl.          .,kXXk,
echo       'KXc  .dNWWX;.xNk.  .kNO::lodxkOXWN0OkxdlcxNKl,..        oN0'..,:ox0XNWWNNWXo.  ,ONO'           .o0Xk;
echo       .ONo    oNWWN0xXWK, .oNKc       .ONx.      ;X0.          .:XNKKNNWWWWNKkl;kNk. .cKXo.           .ON0;
echo       .xNd   cNWWWWWWWWKOkKNXxl:,'...;0Xo'.....'lXK;...',:lxk0KNWWWWNNKOd:..   lXKclON0:            .xNk.
echo       .dXd   ;XWWWWWWWWWWWWWWWWWWNNNNNWWNNNNNNNNNWWNNNNNNWWWWWNXKNNk;..        .dNWWXd.             cXO.
echo       .xXo   .ONWNWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWNNK0ko:'..OXo          'l0NXx,              :KK,
echo       .OXc    :XNk0NWXKNWWWWWWWWWWWWWWWWWWWWWNNNX00NNx:'..       lXKc.     'lONN0l.              .oXK:
echo       .KX;    .dNKoON0;lXNkcld0NXo::cd0NNO:;,,'.. .0Xc            lXXo..'l0NNKd,.              .c0Nk,
echo       :XK.     .xNX0NKc.cXXl  ;KXl    .dN0.       .0No            .xNXOKNXOo,.               .l0Xk;.
echo      .dXk.      .lKWN0d::OWK;  lXXc    .OX:       .ONx.     . .,cdk0XNXOd;.   .'''....;c:'..;xKXx,
echo      .0No         .:dOKNNNWNKOxkXWXo:,,;ONk;,,,,,;c0NXOxxkO0XXNXKOdc,.  ..;::,...;lol;..:xKXOl.
echo      ,XX:             ..';cldxkOO0KKKXXXXXXXXXXKKKKK00Okxdol:;'..   .';::,..':llc,..'lkKXkc.
echo      :NX'    .     ''            ..................             .,;:;,',;ccc;'..'lkKX0d;.
echo      lNK.   .;      ,lc,.         ................        ..,,;;;;;;:::,....,lkKX0d:.
echo     .oN0.    .'.      .;ccc;,'....              ....'',;;;;;;;;;;'..   .;oOXX0d:.
echo     .dN0.      .;;,..       ....                ..''''''''....     .:dOKKko;.
echo      lNK'         ..,;::;;,'.........................           .;d0X0kc'.
echo      .xXO'                                                 .;oOK0x:.
echo       .cKKo.                                    .,:oxkkkxk0K0xc'.
echo         .oKKkc,.                         .';cok0XNNNX0Oxoc,.
echo           .;d0XX0kdlc:;,,,',,,;;:clodkO0KK0Okdl:,'..
echo               .,coxO0KXXXXXXXKK0OOxdoc:,..
echo                         ...
echo.
pause
powershell -Command START """C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\%NAME%'s AI"""
exit