@echo off
title Network Troubleshoot Toolkit
color 0B

:MENU
cls
echo ==================================================
echo             NETWORK TROUBLESHOOT TOOLKIT
echo ==================================================
echo.
echo 1. Show IP Configuration
echo 2. Flush DNS Cache
echo 3. Release IP Address
echo 4. Renew IP Address
echo 5. Reset Winsock
echo 6. Reset TCP/IP Stack
echo 7. Ping Google
echo 8. Network Statistics
echo 9. Open Network Connections
echo 10. Open Wi-Fi Settings
echo 11. Full Network Repair
echo 12. Exit
echo.
echo ==================================================
set /p choice=Select option:

if "%choice%"=="1" goto IPCONFIG
if "%choice%"=="2" goto FLUSHDNS
if "%choice%"=="3" goto RELEASE
if "%choice%"=="4" goto RENEW
if "%choice%"=="5" goto WINSOCK
if "%choice%"=="6" goto TCPRESET
if "%choice%"=="7" goto PING
if "%choice%"=="8" goto NETSTAT
if "%choice%"=="9" goto NCPA
if "%choice%"=="10" goto WIFI
if "%choice%"=="11" goto REPAIR
if "%choice%"=="12" exit

echo.
echo Invalid option.
pause
goto MENU

:IPCONFIG
cls
echo Showing IP Configuration...
echo.
ipconfig /all
pause
goto MENU

:FLUSHDNS
cls
echo Flushing DNS Cache...
echo.
ipconfig /flushdns
pause
goto MENU

:RELEASE
cls
echo Releasing IP Address...
echo.
ipconfig /release
pause
goto MENU

:RENEW
cls
echo Renewing IP Address...
echo.
ipconfig /renew
pause
goto MENU

:WINSOCK
cls
echo Resetting Winsock...
echo.
netsh winsock reset
pause
goto MENU

:TCPRESET
cls
echo Resetting TCP/IP Stack...
echo.
netsh int ip reset
pause
goto MENU

:PING
cls
echo Pinging Google...
echo.
ping google.com
pause
goto MENU

:NETSTAT
cls
echo Displaying Network Statistics...
echo.
netstat -ano
pause
goto MENU

:NCPA
cls
echo Opening Network Connections...
start ncpa.cpl
goto MENU

:WIFI
cls
echo Opening Wi-Fi Settings...
start ms-settings:network-wifi
goto MENU

:REPAIR
cls
echo ==========================================
echo        FULL NETWORK REPAIR STARTED
echo ==========================================
echo.

echo [1/5] Flushing DNS...
ipconfig /flushdns

echo.
echo [2/5] Releasing IP...
ipconfig /release

echo.
echo [3/5] Renewing IP...
ipconfig /renew

echo.
echo [4/5] Resetting Winsock...
netsh winsock reset

echo.
echo [5/5] Resetting TCP/IP...
netsh int ip reset

echo.
echo ==========================================
echo Repair Completed!
echo It is recommended to restart your PC.
echo ==========================================
pause
goto MENU
