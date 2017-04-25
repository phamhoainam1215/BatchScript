@echo off
color 1f

:bd
cls
echo.
echo 		Main Menu
echo.
echo		1. Disable User
echo		2. Enable User
echo		3. View User
echo		4. Log off
echo		5. Thoat
echo.
set /p chon=	Type 1/2/3/4 for command: 
if "%chon%"=="3" goto t3
if "%chon%"=="2" goto t2
if "%chon%"=="1" goto t1
if "%chon%"=="4" shutdown -l
if "%chon%"=="5" (goto exit) else goto bd


:t1
cls
echo.
set /p chon1=	Type username you want to Disable(input "mm" to back Main Menu): 
if  "%chon1%"  ==  "mm"  goto bd
if  "%chon1%"  ==  "MM"  (goto bd) else goto th1
:th1
net user "%chon1%" /active:no
pause >nul
goto bd


:t2
cls
echo.
set /p chon2=	Type username you want to Enable(input "mm" to back Main Menu): 
if  "%chon2%"  ==  "mm" goto bd
if  "%chon2%"  ==  "MM"  (goto bd) else goto th2
:th2
net user "%chon2%" /active:yes
pause > nul
goto bd


:t3
cls
echo.
echo		 ..::Choose a user::..
net user
Echo Press any key to back Main Menu...
pause >nul
goto bd
