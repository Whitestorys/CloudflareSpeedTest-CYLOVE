@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
Setlocal Enabledelayedexpansion
CloudflareST.exe -p 0
for /f "tokens=1 delims=," %%i in (result.csv) do (
Set /a n+=1 
If !n!==2 Echo %%i>best_ip.txt
)
cd /d "%~dp0"
set /p bestip=<best_ip.txt
set /p domain=<domain.txt
echo 当前加速IP：%bestip%
@echo off
echo "请注意你的杀毒软件提示，一定要允许"
@echo  ########################################
@xcopy C:\Windows\system32\drivers\etc\hosts C:\Windows\system32\drivers\etc\hosts.bak\ /d /c /i /y
@echo  ########################################
@echo  hosts文件备份完毕，开始修改hosts文件
findstr /v "cylove.cc" C:\Windows\System32\drivers\etc\hosts >> C:\Windows\System32\drivers\etc\hoststemp
@echo %bestip% %domain% >>C:\Windows\System32\drivers\etc\hoststemp
@echo %bestip% www.%domain% >>C:\Windows\System32\drivers\etc\hoststemp
move /y C:\Windows\System32\drivers\etc\hoststemp C:\Windows\System32\drivers\etc\hosts
@ipconfig /flushdns
del best_ip.txt
echo  ########################################
echo   白色の物语制作
echo   https://github.com/Whitestorys/CloudflareUPSpeed
echo  ########################################
echo  域名加速完成，关闭软件正常打开网页即可
@pause > nul
@exit