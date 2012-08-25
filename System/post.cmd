@echo off & setlocal & title FastMeet [%FASTMEET_USER%]

set LOGFILE=%FASTMEET_ROOT%\Logs\Log.txt

:input_msg
set MSG=
set /p MSG="> "
cls
if not "%MSG%" == "" (
	call :lock %LOGFILE%
	echo [%DATE: =% %TIME: =%] ^<%FASTMEET_USER%^> %MSG%>> "%LOGFILE%"
	call :unlock %LOGFILE%
	waitfor /SI FMREFRESH > nul 2> nul
)
goto :input_msg

:lock
mkdir %1.lock 2>nul && goto :eof
echo Please wait...
waitfor /T 1 FMLOCKWAIT%RANDOM% > nul 2> nul
cls
goto :lock

:unlock
rmdir %1.lock 2>nul
