@echo off
powershell -NoProfile -Command "Start-Process -FilePath '%appdata%\DJ\hintergrund.bat' -WindowStyle Hidden"
powershell -NoProfile -Command "Start-Process -FilePath '%appdata%\DJ\sound_auto.bat' -WindowStyle Hidden"
exit
