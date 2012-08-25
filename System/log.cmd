@echo off & setlocal & title FastMeet @ %FASTMEET_SERVER:\=%

set LOGFILE=%FASTMEET_ROOT%\Logs\Log.txt
set LINES=1

echo Welcome to FastMeet Server^!
set /P="Now Loading... " < nul

:watch_init
if exist %LOGFILE% (
	for /F "skip=%LINES% delims=` usebackq" %%l in ("%LOGFILE%") do (
		call :increment_lines
	)
) else (
	call :lock %LOGFILE%
	echo !LOGFILE > %LOGFILE%
	call :unlock %LOGFILE%
)

echo Ready^!
echo --------------------------------------

:watch_loop
if exist %LOGFILE% (
	for /F "skip=%LINES% delims=` tokens=* usebackq" %%a in ("%LOGFILE%") do (
		echo %%a
		call :increment_lines
	)
)
waitfor /T 1 FMREFRESH > nul 2> nul || waitfor /T 1 FMMSGWAIT%RANDOM% > nul 2> nul
goto :watch_loop

:increment_lines
set /A LINES=%LINES% + 1
goto :eof

:lock
mkdir %1.lock 2>nul && goto :eof
echo Please wait...
waitfor /T 1 FMLOCKWAIT%RANDOM% > nul 2> nul
cls
goto :lock

:unlock
rmdir %1.lock 2>nul
