@echo off & setlocal & title FastMeet

:: FastMeet - The Most Simple Instant Messaging Ever
:: @author Kenichi Maehashi
:: @version 1.0

:: **************************** Configuration ****************************

:: User's name. The environment variable is used by default.
:: You can change it as you like, but shorter is better.
set FASTMEET_USER=%USERNAME%

:: Computer path (\\<COMPUTER_NAME_OR_IP>) that will host FastMeet clients
:: You can use local drive letter (C:, D:, etc.) for testing purposes.
::set FASTMEET_SERVER=\\192.168.100.1
::set FASTMEET_SERVER=\\adam-PC
set FASTMEET_SERVER=\\192.168.22.108

:: Path to the directory where "System" directory resides.
set FASTMEET_DIR=\kenichi\Development\FastMeet

:: ***********************************************************************

echo Connecting to FastMeet (%FASTMEET_SERVER:\=%)...

set FASTMEET_ROOT=%FASTMEET_SERVER%%FASTMEET_DIR%
start "" %FASTMEET_ROOT%\System\_window_log.lnk
start "" %FASTMEET_ROOT%\System\_window_post.lnk
