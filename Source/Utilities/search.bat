ECHO OFF
:start
cls
title %userid%'s AI Search
echo [===============================================================================]
echo [ Sanchit's AI Mission (QL). AI Assistant Search                                ]
echo [ (C)Sanchit Sharma                                                             ]
echo [ Press Enter to go to Home.                                                    ] 
echo [===============================================================================]
echo.
echo What Search Engine?
echo 1)GOOGLE
echo 2)BING
echo 3)YAHOO
echo 4)Browser Settings
echo 1, 2, 3 or 4
SET /P searchen=
if "%searchen%" EQU "" goto bye
if %searchen% EQU 1 goto google
if %searchen% EQU 2 goto bing
if %searchen% EQU 3 goto yahoo
if %searchen% EQU 4 goto broset
goto start

:google
cls
echo [===============================================================================]
echo [ Sanchit's AI Mission (QL). AI Assistant Google Search                         ]
echo [ Copyright Sanchit 2017  Copyright Google 2017                                 ]
echo [ Press Enter to go to Back.                                                    ]
echo [===============================================================================]
echo.
title %userid%'s AI Google Search
echo Hi %userid%, Search Anything on Google!
SET /P SC=
if "%sc%" EQU "" goto start
start %bro% http://google.com/search?q=%SC: =+%
SET SC=
goto google

:bing
cls
echo [===============================================================================]
echo [ Sanchit's AI Mission (QL). AI Assistant Bing Search                           ]
echo [ Copyright Sanchit 2017  Copyright Bing 2017                                   ]
echo [ Press Enter to go to Back.                                                    ]
echo [===============================================================================]
echo.
title %userid%'s AI Bing Search
echo Hi %userid%, Search Anything on Bing!
SET /P SC=
if "%sc%" EQU "" goto start
start %bro% http://bing.com/search?q=%SC: =+%
SET SC=
goto bing

:yahoo
cls
echo [===============================================================================]
echo [ Sanchit's AI Mission (QL). AI Assistant Yahoo Search                          ]
echo [ Copyright Sanchit 2017  Copyright Yahoo 2017                                  ]
echo [ Press Enter to go to Back.                                                    ]
echo [===============================================================================]
echo.
title %userid%'s AI Yahoo Search
echo Hi %userid%, Search Anything on Yahoo!
SET /P SC=
if "%sc%" EQU "" goto start
start %bro% http://search.yahoo.com/search?q=%SC: =+%
SET SC=
goto yahoo

:broset
echo [===============================================================================]
echo [ Sanchit's AI Mission (QL). AI Assistant Search Settings                       ]
echo [ (C) Sanchit Sharma                                                            ]
echo [ Press Enter to go to Back.                                                    ]
echo [===============================================================================]
echo.
echo Only Select a browser only if I exists on your computer, otherwise errors will come up!
echo Also, currently you can only change this setting once.
echo Which Browser?
echo 1)Google Chrome
echo 2)Mozilla Firefox
echo 3)Microsoft Edge (Not Working). If you really need it, set MS Edge as your default browser.
echo 4)Default
echo 1, 2, 3 or 4
SET /P searchbro=
if "%searchbro%" EQU "" goto start
if %searchbro% EQU 1 goto chrome
if %searchbro% EQU 2 goto firefox
if %searchbro% EQU 3 goto edge
if %searchbro% EQU 4 goto start
goto start

:chrome
echo set bro=chrome >> C:\Users\%USERNAME%\ai\data\%USERNAME%.bat
goto start
:firefox
echo set bro=firefox >> C:\Users\%USERNAME%\ai\data\%USERNAME%.bat
goto start
:edge
echo set bro="microsoft edge" >> C:\Users\%USERNAME%\ai\data\%USERNAME%.bat
goto start

:bye
exit




