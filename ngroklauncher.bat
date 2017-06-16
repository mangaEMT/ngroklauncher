@ECHO off
title ngrok Launcher
cls
:start
ECHO.
ECHO 1. Launch ngrok US (United States)
ECHO 2. Launch ngrok EU (Europe)
ECHO 3. Launch ngrok AU (Australia)
ECHO 4. Launch ngrok AP (Asia Pacific)
set choice=
set /p choice=Choose your region.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto us
if '%choice%'=='2' goto eu
if '%choice%'=='3' goto au
if '%choice%'=='4' goto ap
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:us
cls
echo Loading...
ngrok.exe tcp 25565
pause
goto end
:eu
cls
echo Loading...
ngrok.exe tcp 25565 -region eu
pause
goto end
:au
cls
echo Loading...
ngrok.exe tcp 25565 -region au
pause
:ap
cls
echo Loading...
ngrok.exe tcp 25565 -region ap
pause
