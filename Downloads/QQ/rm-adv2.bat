REM Ensure that all QQ instances are NOT running
REM set your QQ installation directory, "E:\bin" for example
REM set PROG_INST=E:\bin

set PROG_INST=%ProgramFiles%
rem del "%PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb"
copy NUL "%PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb"
pause