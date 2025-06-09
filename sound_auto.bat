@echo off
cd %appdata%\DJ
:Loop
start sound.exe
timeout /t 1
goto Loop
