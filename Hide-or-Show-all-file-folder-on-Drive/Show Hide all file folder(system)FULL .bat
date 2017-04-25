@echo off
color 1f
:bd
cls
echo.
echo 		Main Menu
echo.
echo 	1. Menu Hide
echo 	2. Menu Hide(Anti)
echo 	3. Exit
echo.
set /p chon=Choose 1/ 2/ "3(or another letter)" for action: 
if "%chon%"=="3" goto th
if "%chon%"=="2" goto a
if "%chon%"=="1" goto h


:th
exit

:a
@echo off
cls
echo.
:batdau1
ECHO List all your drive:
For %%I IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO for /f "tokens=4,6*" %%k in ('vol %%I: 2^>nul^|find "drive"') do echo %%k - %%l %%m
for /f "tokens=3" %%x in ('fsutil fsinfo drivetype %driver%:') do if "%%x"=="CD-ROM" set driver=C
echo.
echo ! Input a drive not exit, script will exit. !
echo ! Type "MM" to back Main Menu. !
ECHO.
echo		Choose a drive not a CD/DVD 
echo	(Script wil SHOW all content on this drive):
echo.
set /p driver=Input a drive (Ex: E ) : 
echo Processing !===" %driver%: "===! ...
if "%driver%"=="mm" goto bd
if "%driver%"=="MM" goto bd
rem pause >nul
if exist "%driver%:" (goto lam1) else goto exit
:lam1
@ echo off
attrib -h -r -s -a %driver%:* /S /D
echo.
echo 					Done!	
goto batdau1


:h
@echo off
cls
echo.
:batdau2
ECHO List all your drive:
For %%I IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO for /f "tokens=4,6*" %%k in ('vol %%I: 2^>nul^|find "drive"') do echo %%k - %%l %%m
for /f "tokens=3" %%x in ('fsutil fsinfo drivetype %driver%:') do if "%%x"=="CD-ROM" set driver=C
echo.
echo ! Input a drive not exit, script will exit. !
echo ! Type "MM" to back Main Menu. !
ECHO.
echo		Choose a drive not a CD/DVD
echo	(Script wil HIDE all content on this drive):
echo.
set /p driver=Input a drive (Ex: E ) :
echo Processing  !===" %driver%: "===! ...
if "%driver%"=="mm" goto bd
if "%driver%"=="MM" goto bd
rem pause >nul
if exist "%driver%:" (goto lam2) else goto exit
:lam2
@ echo off
attrib +h +r +s +a %driver%:* /S /D
echo.
echo 					Done!	
goto batdau2




