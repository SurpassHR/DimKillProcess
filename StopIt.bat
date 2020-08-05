@echo off
set app1=a.exe
:loop
    tasklist|findstr /i /b "%app1%"
    ::找到该进程 errorlevel 为 0,没找到为 1
    if errorlevel 0 taskkill /im %app1% /f /t 1>nul 2>nul
    ::成功关闭进程为 0 没找到为 128
    if not errorlevel 128 if errorlevel 0 mshta vbscript:msgbox("服务器连接异常",64,"腾讯WeGame客户端")(window.close)
goto loop