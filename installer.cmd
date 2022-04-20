@echo off
color c
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/832610514370691162/832610545528995850/Power_Plan.pow" -OutFile "%temp%\Hone_Power_Plan.pow"
powercfg -import "%temp%\Hone_Power_Plan.pow" 44444444-4444-4444-4444-444444444448
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444448"
powercfg /changename 44444444-4444-4444-4444-444444444448 "Booster" "Power Plan for your PC and boost FPS."
goto success

:success
SET msgboxTitle=Success
SET msgboxBody=Done!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"





