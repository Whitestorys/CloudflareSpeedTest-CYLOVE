@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
set /p domain=<domain.txt
@echo off
echo "��ע�����ɱ�������ʾ��һ��Ҫ����"
@echo  ########################################
@xcopy C:\Windows\system32\drivers\etc\hosts C:\Windows\system32\drivers\etc\hosts.bak\ /d /c /i /y
@echo  ########################################
@echo  hosts�ļ�������ϣ���ʼ�޸�hosts�ļ�
findstr /v "%domain%" C:\Windows\System32\drivers\etc\hosts >> C:\Windows\System32\drivers\etc\hoststemp
move /y C:\Windows\System32\drivers\etc\hoststemp C:\Windows\System32\drivers\etc\hosts
@ipconfig /flushdns
echo  ########################################
echo   ��ɫ����������
echo   https://github.com/Whitestorys/CloudflareUPSpeed
echo  ########################################
echo  hosts�ļ��ָ���ϣ���������˳�
@pause > nul
@exit