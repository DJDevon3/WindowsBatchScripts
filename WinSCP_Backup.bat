@echo off
option batch continue
option confirm off
set LocalDir=C:\Users\Username\Downloads\ERL_Backup
set RemoteDir=/
set ERL_Username=ubnt
set ERL_Password=ubnt
set ERL_IP=192.168.1.1

"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="%LocalDir%\Backup.log" /ini=nul ^
  /command ^
    "open scp://%ERL_Username%:%ERL_Password%@%ERL_IP%/ -hostkey=""ssh-<key_obfuscated>="" -rawsettings PingIntervalSecs=5 Cipher=""aes,chacha20,3des,WARN,des,blowfish,arcfour"" AddressFamily=1 Shell=""sudo%%20su%%20-""" ^
    "cd /" ^
    "lcd %LocalDir%" ^
    "get %RemoteDir%bin/" ^
    "get %RemoteDir%boot/" ^
    "get %RemoteDir%config/" ^
    "get %RemoteDir%home/" ^
    "get %RemoteDir%media/" ^
    "get %RemoteDir%mnt/" ^
    "get %RemoteDir%opt/" ^
    "get %RemoteDir%root/" ^
    "get %RemoteDir%sbin/" ^
    "get %RemoteDir%srv/" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%