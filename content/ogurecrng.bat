@echo off
chcp 65001 >nul
mode 100, 35
goto Main

:Main
set /a minRnd = 1
set /a maxRnd = 20000
set /a rnd=((( %RANDOM% %% (%maxRnd% - %minRnd% + 1) ) + %minRnd%) * 50) - 49
set /a cheId=%RANDOM% + %RANDOM% + %RANDOM%
@REM EQU - equal
@REM NEQ - not equal
@REM LSS - less than
@REM LEQ - less than or equal
@REM GTR - greater than
@REM GEQ - greater than or equal
color f
echo [Common] Ogurec
color 2
if %rnd% LEQ 650000 (
    color f
    echo [Common] Fresh ogurec
    color a
)
if %rnd% LEQ 350000 (
    color f
    echo [Uncommon] Coleny ogurec
    color 2
)
if %rnd% LEQ 150000 (
    color f
    echo [Uncommon] Supermarinovanny ogurec
    color b
)
if %rnd% LEQ 70000 (
    color f
    echo [Rare] Nautilus ogurec
    color 9
)
if %rnd% LEQ 50000 (
    color f
    echo [Rare] Supermarinovanny x3 ogurec
    color 3
)
if %rnd% LEQ 35000 (
    color f
    echo [Rare] Nautilus x2 ogurec
    color 9
)
if %rnd% LEQ 1000 (
    color f
    echo [LEGENDARY] Grandma's ogurec
    color 2
)
if %rnd% LEQ 100 (
    color f
    echo [MYTHIC] Cool ogurec
    color 0
)
if %rnd% LEQ 10 (
    color f
    echo [EXALTED] Sigma ogurec
    color 7
)
if %rnd% LEQ 1 (
    color f
    echo [GLORIOUS] HOLY OGUREC
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
echo [ Roll: %rnd% ]
echo [ Rolling ]
echo %rnd% > .\cache\%cheId%.ogurecrngche
timeout 1
ogurecrng