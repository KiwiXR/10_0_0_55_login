%1 mshta vbscript:CreateObject("WScript.Shell").Run("%~s0 ::",0,FALSE)(window.close)&&exit

@echo off
::此处激活anaconda环境，具体命令复制Anaconda Prompt快捷方式->属性->目标中"/K"后面的部分
call D:\anaconda3\Scripts\activate.bat D:\anaconda3
:Begin
ping www.baidu.com
if errorlevel 1 goto Reboot
if errorlevel 0 goto Continue
:Continue
TIMEOUT /T 1800
goto Begin:
:Reboot
python 10_0_0_55.py logout
python 10_0_0_55.py login
echo %date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2% 断网已重启，等待时间30min...>>log.txt
::设置延时等待
TIMEOUT /T 30
goto Begin
