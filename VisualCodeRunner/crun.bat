@echo off

if "%~dpnx1" equ "" goto :eof

setlocal
set tempfile=%date:~4%%time::=%
set tempfile=%tempfile:/=%
set tempfile=%tempfile:.=%
set tempfile=%tempfile: =%
gcc -o %tempfile%.exe "%~dpnx1"
%tempfile%.exe
del %tempfile%.exe
endlocal