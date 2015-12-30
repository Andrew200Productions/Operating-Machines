@echo off
mode 1000
title Rock Operating Machine (OS/OM) - [Running] - Copyright (c) 2015 - Version 0.1
color 7

goto boot
:boot
cls
echo.
echo Rock Operating Machine is booting
echo []=========
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo =[]========
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ==[]=======
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ===[]======
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ====[]=====
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo =====[]====
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ======[]===
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo =======[]==
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ========[]=
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo =========[]
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo []=========
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo =[]========
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ==[]=======
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ===[]======
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ====[]=====
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo =====[]====
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ======[]===
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo =======[]==
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo ========[]=
ping localhost -n 1 >nul
cls
echo.
echo Rock Operating Machine is booting
echo =========[]
ping localhost -n 1 >nul
goto signin

:signin
cls
echo.
echo -------------------------

set /p user=Username: 
if %user% == Guest goto main
if %user% == Administrator goto signin2
goto signin

:signin2
echo.

set /p var=Password: 
if %var% == password goto main
goto signin

:main
cls
echo.
echo _____________________________________________________________________________________Desktop_____________________________________________________________________________________
echo.
echo TYPE THE NUMBER BY THE THING YOU WANT TO OPEN AND THEN PUSH ENTER.
echo.
echo 1 PROGRAMS
echo 2 SETTINGS
echo 3 SHUT DOWN
echo 4 LOG OFF
echo 5 RESTART
echo 6 HELP

set /p var=: 
if %var% == 1 goto programs
if %var% == 2 goto settings
if %var% == 3 goto shutdown
if %var% == 4 goto signin
if %var% == 5 goto restart
if %var% == 6 goto help
goto main

:help
cls
echo.
start Rock-OS-Help.py
goto main

:programs
cls
echo.
echo _____________________________________________________________________________________Desktop_____________________________________________________________________________________
echo.
echo TYPE THE NUMBER BY THE THING YOU WANT TO OPEN AND THEN PUSH ENTER.
echo.
echo 1 Internet Browser
echo 2 Draw
echo 3 Typepad
echo 4 My Files
echo 5 Command Prompt
echo 6 EXIT PROGRAMS

set /p var=: 
if %var% == 1 goto IB
if %var% == 2 goto Draw
if %var% == 3 goto Typepad
if %var% == 4 goto files
if %var% == 5 goto cmd
if %var% == 6 goto main



:settings
cls
echo.
echo _____________________________________________________________________________________Settings____________________________________________________________________________________
echo.
echo Audio      []=========
echo Brightness =========[]

echo.

pause
goto main


:IB
cls
echo.
echo TYPE THE NUMBER BY THE THING YOU WANT TO OPEN AND THEN PUSH ENTER.
echo.
echo 1 Exit
echo 2 Internet Browser
echo.
echo TYPE THE URL AND THEN ENTER
echo.

set /p var=URL: 
if %var% == 1 goto programs
if %var% == 2 goto IB
if %var% == www.google.com goto google
goto unable

:google
cls
echo.
echo URL LOADED: https://www.google.com/
echo.
echo GOOGLE
echo SEARCH GOOGLE: ______________________________________________ :SEARCH:
echo.
pause 
goto IB

:unable
cls
echo.
echo This Browser is unable to find the website %var%
echo Press any key to exit.
pause >nul
goto IB


:Draw
cls
echo.
echo THIS PROGRAM IS NOT YET SET UP PLEASE EXIT AND TRY AGAIN LATER
echo Press any key to exit.
pause >nul
goto programs

:Typepad
cls
echo.
echo THIS PROGRAM IS NOT YET SET UP PLEASE EXIT AND TRY AGAIN LATER
echo Press any key to exit.
pause >nul
goto programs

:files
cls
start files\folder.txt
echo.
echo 1 Games
echo 2 Exit

set /p var=: 
if %var% == 1 goto games
if %var% == 2 goto programs
goto files

:cmd
cls
echo.
start cmd
goto programs

:games
cls
echo.
echo 1 Platformer Game
echo 2 Exit

set /p var=: 
if %var% == 1 start Programs\Games\Platformer.bat
if %var% == 2 goto files
goto games

:shutdown
cls
echo.
echo SHUTING DOWN ROCK OPERATING SYSTEM.\
ping localhost -n 2 >nul
cls
echo.
echo SHUTING DOWN ROCK OPERATING SYSTEM./
ping localhost -n 2 >nul
cls
echo.
echo SHUTING DOWN ROCK OPERATING SYSTEM.\
ping localhost -n 2 >nul
cls
echo.
echo SHUTING DOWN ROCK OPERATING SYSTEM./
ping localhost -n 2 >nul
exit

:restart
cls
echo.
echo RESTARTING ROCK OPERATING SYSTEM.\
ping localhost -n 2 >nul
cls
echo.
echo RESTARTING ROCK OPERATING SYSTEM./
ping localhost -n 2 >nul
cls
echo.
echo RESTARTING ROCK OPERATING SYSTEM.\
ping localhost -n 2 >nul
cls
echo.
echo RESTARTING ROCK OPERATING SYSTEM./
ping localhost -n 2 >nul
start Rock-OS.bat
exit
