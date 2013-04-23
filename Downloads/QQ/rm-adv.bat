REM replace 1234567890 with your QQ number
REM 把下面一行的 1234567890 换成你自己的qq号码
set QQ_NUM=1234567890
del "%appdata%\Tencent\Users\%QQ_NUM%\QQ\Misc.db"
mkdir "%appdata%\Tencent\Users\%QQ_NUM%\QQ\Misc.db" 
dir "%appdata%\Tencent\Users\%QQ_NUM%\QQ\"
pause    
