@echo off
setlocal
powershell -Command "choco install ngrok -y"
powershell -Command "choco install nssm -y"
powershell -Command "choco install qbittorrent -y"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/estrellaabraham/RD/main/st.bat -OutFile st.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/estrellaabraham/RD/main/loop.bat -OutFile loop.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/estrellaabraham/RD/main/as.bat -OutFile as.bat"
curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe

