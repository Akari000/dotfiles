@echo off

setlocal
if "%~dpnx1" equ "" goto :eof
javac %~dpnx1
if %ERRORLEVEL% neq 0 goto :eof
java -cp %~dp1; %~n1
endlocal
del "%~dpn1.class"
:eof
exit /b %ERRORLEVEL%