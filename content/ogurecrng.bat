@echo off
chcp 65001 >nul
mode 100, 35
goto Main

:Main
set /a minRn = 1
set /a maxRn = 20000
set /a random=((( %RANDOM% %% (%maxRn% - %minRn% + 1) ) + %minRn%) * 50) - 49
set /a cheId=%RANDOM% + %RANDOM% + %RANDOM%
@REM EQU - equal
@REM NEQ - not equal
@REM LSS - less than
@REM LEQ - less than or equal
@REM GTR - greater than
@REM GEQ - greater than or equal
color f
echo [Common] Ogurec > .\cache\%cheId%.ogurecche
color 2
if %random% LEQ 650000 (
    color f
    echo [Common] Fresh ogurec > .\cache\%cheId%.ogurecche
    color a
)
if %random% LEQ 350000 (
    color f
    echo [Uncommon] Coleny ogurec > .\cache\%cheId%.ogurecche
    color 2
)
if %random% LEQ 150000 (
    color f
    echo [Uncommon] Supermarinovanny ogurec > .\cache\%cheId%.ogurecche
    color b
)
if %random% LEQ 70000 (
    color f
    echo [Rare] Nautilus ogurec > .\cache\%cheId%.ogurecche
    color 9
)
if %random% LEQ 50000 (
    color f
    echo [Rare] Supermarinovanny x3 ogurec > .\cache\%cheId%.ogurecche
    color 3
)
if %random% LEQ 35000 (
    color f
    echo [Rare] Nautilus x2 ogurec > .\cache\%cheId%.ogurecche
    color 9
)
if %random% LEQ 1000 (
    color f
    echo [LEGENDARY] Grandma's ogurec > .\cache\%cheId%.ogurecche
    color 2
)
if %random% LEQ 100 (
    color f
    echo [MYTHIC] Cool ogurec > .\cache\%cheId%.ogurecche
    color 0
)
if %random% LEQ 10 (
    color f
    echo [EXALTED] Sigma ogurec > .\cache\%cheId%.ogurecche
    color 7
)
if %random% LEQ 1 (
    color f
    echo [GLORIOUS] HOLY OGUREC > .\cache\%cheId%.ogurecche
    color e
)
echo    ▒▒▓▓▓▓    ░░░░░░
echo    ▓▓▓▓▒▒▒▒      ▒▒
echo    ▒▒▒▒▒▒██        
echo    ▓▓▒▒▒▒▓▓        
echo    ▓▓▒▒▓▓▒▒        
echo    ▒▒▓▓▓▓▓▓        
echo    ▓▓▓▓▓▓▓▓        
echo    ▓▓▓▓▓▓▓▓        
echo    ▓▓▓▓▓▓▓▓        
echo    ▓▓██▓▓▓▓        
echo    ██▓▓▓▓██        
echo    ██▓▓██▓▓        
echo    ▓▓▓▓▓▓██        
echo    ████▓▓▓▓        
echo    ██▓▓▓▓▓▓        
echo  ▒▒██▓▓▓▓██        
echo    ██▓▓▓▓██        
echo    ▓▓▓▓▓▓▓▓        
echo    ██▓▓██          
echo [ Roll: %random% ] > .\cache\%cheId%.ogurecche
echo [ Rolling ] > .\cache\%cheId%.ogurecche
timeout 1
ogurecrng