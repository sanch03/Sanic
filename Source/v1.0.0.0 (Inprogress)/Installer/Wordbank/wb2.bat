@ECHO OFF
echo WORD BANK UPDATE
set q1=what is my name
set a1=%userid%

set q2=what is your name
set a2=Well I don't have a name yet! Hopefully I will be getting one in the future!

set q3=who made you
set a3=Sanchit Sharma

set q4=where were you made
set a4=In Sanchit Sharma's Room

set q5=will you marry me
set a5=Sorry, I don't think you deserve me.

set q6=How are you
set a6=Good Thank You!

set q7=Hi
set a7=Hello

set q8=Hello
set a8=Hi

set q9=Potatoe
set a9=You are my best friend!

set q10=Tell me a joke
set a10=Sorry, I don't have any yet!

echo set anwser="%a1%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q1%.bat"
echo set anwser="%a2%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q2%.bat"
echo set anwser="%a3%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q3%.bat"
echo set anwser="%a4%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q4%.bat"
echo set anwser="%a5%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q5%.bat"
echo set anwser="%a6%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q6%.bat"
echo set anwser="%a7%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q7%.bat"
echo set anwser="%a8%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q8%.bat"
echo set anwser="%a9%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q9%.bat"
echo set anwser="%a10%" > "C:\Users\%USERNAME%\ai\wordbank\online\%q10%.bat"

:change
echo set wbversion=1 > "C:\Users\%USERNAME%\ai\data\wbversion.bat"
exit








