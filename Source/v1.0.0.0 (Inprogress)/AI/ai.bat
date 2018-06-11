@ECHO OFF
echo set version1=0 > "C:\Users\%USERNAME%\sanic\data\version.bat"
echo set version2=1 > "C:\Users\%USERNAME%\sanic\data\version.bat"
call C:\Users\%USERNAME%\sanic\data\%USERNAME%.bat
color %colour%
set userid=%userid%
:clear
cls
title %userid%'s AI
echo [===============================================================================]
echo [ Sanic. Alpha Build v1.0.0.0.                                                  ]
echo [ (C)Sanchit Sharma and Nikith Kaluwitharana                                    ] 
echo [                                                                               ]
echo [ Problems? Questions? Suggestions? Applications? Contact me by typing in:      ]
echo [ Contact Sanic or Help                                                         ]
echo [ Type cls to clear screen                                                      ]
echo [===============================================================================]
echo.
:begin
set clear=begin
echo Ask Anything %userid%! 
SET /P TALK=
if "%TALK%" EQU "" goto begin
set TALK=%TALK:?=%
if /I "%TALK%" EQU "cls" goto clear
if exist "C:\Users\%USERNAME%\sanic\wordbank\command\%TALK%.bat" goto com
if exist "C:\Users\%USERNAME%\sanic\wordbank\online\%TALK%.bat" goto con1
if exist "C:\Users\%USERNAME%\sanic\wordbank\user\%TALK%.bat" goto con2
echo I am sorry, I do not know what "%TALK%" means, do you wish to tell me? (Y/N)
SET /P ANSW.=
if /I "%ANSW.:~0,1%" neq "Y" goto begin

:ADDNEW
echo TELL ME WHAT "%TALK%" MEANS
set /P Desc=
echo set anwser="%Desc%" > "C:\Users\%USERNAME%\sanic\wordbank\user\%TALK%.bat"
echo set %TALK%="%Desc%" > "C:\Users\%USERNAME%\sanic\wordbank\user\log.txt
echo THANKS
pause
goto begin

:con1
call "C:\Users\%USERNAME%\sanic\wordbank\online\%TALK%.bat"
echo %ANWSER%
goto begin

:con2
call "C:\Users\%USERNAME%\sanic\wordbank\user\%TALK%.bat"
echo %ANWSER%
goto begin

:com
call "C:\Users\%USERNAME%\sanic\wordbank\command\%TALK%.bat"
call "%anwser%"
goto clear







