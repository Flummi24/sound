@echo off
powershell -NoProfile -Command ^
    "Start-Process -FilePath '%appdata%\DJ\hintergrund.bat' -WindowStyle Hidden"
exit 1
