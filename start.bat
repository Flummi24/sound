@echo off
powershell -NoProfile -Command ^
    "Start-Process -FilePath 'C:\users\%username%\AD\hintergrund.bat' -WindowStyle Hidden"
exit 1