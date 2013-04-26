REM Ensure that all QQ instances are NOT running
REM set your QQ installation directory, "E:\bin" for example
REM set PROG_INST=E:\bin

set PROG_INST=%ProgramFiles%
del "%PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb"
mkdir "%PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb"
rem copy NUL "%PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb"
pause