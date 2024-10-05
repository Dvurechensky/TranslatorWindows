@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion
set "text=%~1"
C:\cygwin64\bin\bash.exe --login -c "/cygdrive/c/Translater/trans.sh '%text%'" > C:\Translater\output.txt
timeout /t 1 /nobreak > nul