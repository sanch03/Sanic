@echo off
md C:\Users\%USERNAME%\ai\extra\
powershell -Command Move-Item C:\Users\%USERNAME%\ai\exfiles\ex1\help.exe C:\Users\%USERNAME%\ai\extra\
powershell -Command Move-Item C:\Users\%USERNAME%\ai\exfiles\ex1\search.exe C:\Users\%USERNAME%\ai\extra\
powershell -Command Move-Item C:\Users\%USERNAME%\ai\exfiles\ex1\calculator.vbs C:\Users\%USERNAME%\ai\extra\
:next
echo set anwser=C:\Users\%USERNAME%\ai\extra\calculator.vbs > "C:\Users\%USERNAME%\ai\wordbank\command\calculator.bat"
echo set anwser=C:\Users\%USERNAME%\ai\extra\calculator.vbs > "C:\Users\%USERNAME%\ai\wordbank\command\math.bat"
echo set anwser=C:\Users\%USERNAME%\ai\extra\help.exe > "C:\Users\%USERNAME%\ai\wordbank\command\help.bat"
echo set anwser=C:\Users\%USERNAME%\ai\extra\search.exe > "C:\Users\%USERNAME%\ai\wordbank\command\search.bat"
echo set anwser=C:\Users\%USERNAME%\ai\extra\search.exe > "C:\Users\%USERNAME%\ai\wordbank\command\google.bat"
:change
echo set exversion=1 > "C:\Users\%USERNAME%\ai\data\extraversion.bat"
exit