@echo off
pushd %~dp0
set /p BuildNumber=<BuildNumber.txt
set /a BuildNumber+=1
echo %BuildNumber% > BuildNumber.txt
echo db "%BuildNumber%@" > ..\BuildNumber.asm
echo db "%date% %time%@" > ..\BuildTime.asm
echo BuildNumber : %BuildNumber%
echo BuildTime : %date% %time%