@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\R 4.2.3.lnk" > errormsg.txt 2>&1
set password=Tk123456@
powershell -Command "Set-LocalUser -Name 'iamadmin1' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"
net config server /srvcomment:"Windows Server" > errormsg.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > errormsg.txt 2>&1
net user iamadmin2 Tk123456@ /add >nul
net localgroup administrators iamadmin2 /add >nul
net user installer /delete
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ipconfig
ICACLS C:\Windows\Temp /grant iamadmin2:F >nul
ICACLS C:\Windows\installer /grant iamadmin2:F >nul
diskperf -Y >nul
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
ping -n 10 127.0.0.1 >nul
echo Username: TheDisala / runneradmin
echo Password: Tk123456@
echo You can login now!
