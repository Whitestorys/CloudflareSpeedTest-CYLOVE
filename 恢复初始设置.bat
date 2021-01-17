@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
set /p domain=<domain.txt
@echo off
echo "请注意你的杀毒软件提示，一定要允许"
@echo  ########################################
@xcopy C:\Windows\system32\drivers\etc\hosts C:\Windows\system32\drivers\etc\hosts.bak\ /d /c /i /y
@echo  ########################################
@echo  hosts文件备份完毕，开始修改hosts文件
findstr /v "%domain%" C:\Windows\System32\drivers\etc\hosts >> C:\Windows\System32\drivers\etc\hoststemp
move /y C:\Windows\System32\drivers\etc\hoststemp C:\Windows\System32\drivers\etc\hosts
@ipconfig /flushdns
echo  ########################################
echo   白色の物语制作
echo   https://github.com/Whitestorys/CloudflareUPSpeed
echo  ########################################
echo  hosts文件恢复完毕，按任意键退出
@pause > nul
@exit