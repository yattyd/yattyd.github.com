@echo off 
echo Please input (...): 
for /f  %%i in ('read.exe') do set IN_STR=%%i
echo You are entered ``%IN_STR%`` 