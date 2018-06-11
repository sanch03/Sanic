rmdir "C:\Users\%USERNAME%\ai\wordbankinstaller" /s /q
md "C:\Users\%USERNAME%\ai\wordbankinstaller"
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaiwbver -OutFile C:\Users\%USERNAME%\ai\wordbankinstaller\wbver.bat
call C:\Users\%USERNAME%\ai\wordbankinstaller\wbver.bat
set ver=%version%
set number=0
set loop=0
:loop
set /a number=%number%+1
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaiwb%number% -OutFile C:\Users\%USERNAME%\ai\wordbankinstaller\wb%number%.bat
echo hello world
set /a loop=%loop%+1 
if "%loop%"=="%ver%" goto next
goto loop

:next
set number2=0
set loop2=0
:loop2
set /a number2=%number2%+1
powershell -Command START C:\Users\%USERNAME%\ai\wordbankinstaller\wb%number2%.bat
echo hello world
set /a loop2=%loop2%+1 
if "%loop2%"=="%ver%" goto next2
goto loop2

:next2
exit
