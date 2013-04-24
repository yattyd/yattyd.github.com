@echo off
REM replace 1234567890 with your QQ number
REM 把下面一行的 1234567890 换成你自己的qq号码
rem set QQ_NUM=123456780

echo 请输入QQ号码 (Please enter your QQ id):
for /f  %%i in ('read.exe -d') do set QQ_NUM=%%i
echo Your QQ ID is ``%QQ_NUM%``

del "%appdata%\Tencent\Users\%QQ_NUM%\QQ\Misc.db"
mkdir "%appdata%\Tencent\Users\%QQ_NUM%\QQ\Misc.db" 
dir "%appdata%\Tencent\Users\%QQ_NUM%\QQ\"
pause   
