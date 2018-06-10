Set SC = CreateObject("ScriptControl")
SC.Language = "VBScript"
 
Val = InputBox("Sanchit's AI Mission (QL). Sanchit's AI Calculator" & vbCrLf & "(C) Sanchit Sharma" & vbCrLf & vbCrLf & "Enter any equation to calculate!!!" & vbCrLf & vbCrLf & "Example:" & vbCrLf & vbCrLf & "(4*2)-5" & vbCrLf & vbCrLf & "or" & vbCrLf & vbCrLf & "Log(20)/4*45+2-(12^3 Mod 4)-Sin(61)+Tan(92)+8")
 
If Trim (Val) <> "" Then MsgBox "Answer =  " & SC.Eval(Val),,"Result"







