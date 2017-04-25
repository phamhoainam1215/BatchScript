@echo off
color 1f
:bd
cls
echo.
echo 	Convert Disk with Fat32 format to NTFS
echo.
echo 		1. Converter Menu 
echo 		2. Exit
echo.
set /p chon=	Input 1/ "2(or another character)" for action: 
if "%chon%"=="2" goto th
if "%chon%"=="1" goto c


:th
exit

:c
@echo off
cls
echo.

:batdau1
ECHO List your drive:
For %%I IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO for /f "tokens=4,6*" %%k in ('vol %%I: 2^>nul^|find "drive"') do echo %%k - %%l %%m
for /f "tokens=3" %%x in ('fsutil fsinfo drivetype %driver%:') do if "%%x"=="CD-ROM" set driver=C
echo.
echo ! Input a drive not exit, script will exit. !
echo ! Type "MM" to back Main Menu. !
ECHO.
echo		Choose a drive not a CD/DVD 
ECHO 	(Script will conver Disk with Fat32 format to NTFS):
echo.
set /p driver=Input Drive (Ex: E ) : 
echo Dang gang thuoc tinh !===" %driver%: "===! ...
if "%driver%"=="mm" goto bd
if "%driver%"=="MM" goto bd
rem pause >nul
if exist "%driver%:" (goto lam1) else goto exit

:lam1
convert %driver%: /fs:ntfs
echo.
echo 					Done!	
goto batdau1


