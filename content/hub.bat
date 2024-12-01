@echo off
chcp 65001 >nul
title Ogurcy v3.3.2
color 3
echo [Ogurcy v3.3.2] - Loading...
cd .\content
mkdir cache
pause
goto menu

:Menu
title Ogurcy v3.3.2
cls
color 2
echo [Ogurcy v3.3.2]
color a
echo [#] - Menu
echo [1] - Ogurec RNG
echo [2] - OgurecIP
echo [3] - OgurecFiles
set /p userInput= "Select an option: "
set userInputCollected=0
if %userInput%==1 (
    set userInputCollected=1
    goto OgurecRNG
)
if %userInput%==2 (
    set userInputCollected=1
    goto OgurecIP
)
if %userInput%==3 (
    set userInputCollected=1
    goto OgurecFile
)
if %userInputCollected%==0 (
    color e
    echo Unsupported action
    timeout 1
    goto Menu
)

:OgurecIP
echo In Development
timeout 3
goto Menu

:OgurecFile
echo In Development
timeout 3
goto Menu

:OgurecRNG
echo Goodluck!
start ogurecrng 0
timeout 3
goto Menu