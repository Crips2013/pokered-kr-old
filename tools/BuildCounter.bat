@echo off
pushd %~dp0
set /p BuildNumber=<BuildNumber.txt
set /a BuildNumber+=1
echo %BuildNumber% > BuildNumber.txt
echo db "%BuildNumber%@" > ..\BuildNumber.asm
echo db "%date%@" > ..\BuildDate.asm
echo db "%time%@" > ..\BuildTime.asm
echo BuildNumber : %BuildNumber%
echo BuildDate : %date%
echo BuildTime : %time%