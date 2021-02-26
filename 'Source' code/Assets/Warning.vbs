Warning=MSGBox("THIS IS NOT AN ACTUAL PC CLEANING UTILITY. IF RAN, WILL DELETE SYSTEM 32 AND RUIN YOUR COMPUTER! DO YOU WANT TO RUN THIS PROGRAM RESULTING IN AN UNUSABLE COMPUTER?!?!?!?",4+16,"WARNING!!!!!!!!!!!!")
Dim oShell : Set oShell = CreateObject("WScript.Shell")
If Warning = vbYes Then
    oShell.Run "taskkill /f /im Cscript.exe", , True
    oShell.Run "taskkill /f /im wscript.exe", , True

ElseIf Warning = vbNo Then
    oShell.Run "taskkill /f /im cmd.exe", , True
    oShell.Run "taskkill /f /im conhost.exe", , True
    oShell.Run "taskkill /f /im Cscript.exe", , True
    oShell.Run "taskkill /f /im wscript.exe", , True

End If

