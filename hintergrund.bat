@echo off
:Loop
powershell -Command "$player = New-Object System.Media.SoundPlayer; $player.SoundLocation = 'C:\users\%username%\AD\gas.wav'; $player.PlaySync()"
goto Loop
shutdown -s -c "Fehler von DJ.exe"
