@echo off
set app1=a.exe
:loop
    tasklist|findstr /i /b "%app1%"
    ::�ҵ��ý��� errorlevel Ϊ 0,û�ҵ�Ϊ 1
    if errorlevel 0 taskkill /im %app1% /f /t 1>nul 2>nul
    ::�ɹ��رս���Ϊ 0 û�ҵ�Ϊ 128
    if not errorlevel 128 if errorlevel 0 mshta vbscript:msgbox("�����������쳣",64,"��ѶWeGame�ͻ���")(window.close)
goto loop