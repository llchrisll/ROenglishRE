@echo off
echo =================================================================
echo Welcome to the Client Generator!
echo This will help you to copy over the files you want and need based on the choice you make.
echo Also everytime after you confirmed your choice, any existing Client folder in the
echo same folder as this will be deleted without asking.
echo =================================================================
pause
:ModeMenu
cls
echo =================================================================
echo Server Mode
echo =================================================================
echo [1] Renewal
echo [2] Pre-Renewal
echo [3] Exit
echo =================================================================
set /p mode="Please select the mode: "
if %mode%==1 set type=Renewal
if %mode%==2 set type=Pre-Renewal
if %mode%==3 exit
:DateMenu
cls
echo =================================================================
echo Client Dates
echo =================================================================
echo [1] 2012-04-10 (Pre-Re only)
echo [2] 2015-05-13
echo [3] 2015-10-29 (Project Base)
echo [4] 2017-06-14
echo [5] 2017-12-13
echo [6] 2018-06-20
echo [7] 2019-06-05
echo [8] 2020-09-02
echo [9] 2021-10-28
echo [10] 2022-03-30
echo [11] 2022-04-06
echo [12] 2022-06-02
echo [13] 2022-08-31
echo [14] 2022-09-28
echo [15] 2022-12-07
echo [16] 2023-01-18
echo [17] 2023-08-02
echo [18] 2023-09-20
echo [19] 2024-03-11
echo [20] 2024-04-03
echo [21] 2024-05-02
echo [22] 2024-08-07
echo [23] 2024-10-16
echo [24] 2025-01-22
echo [25] 2025-08-02 (requirement for GRF v3 (0x300))
echo [26] 2025-09-02
echo =================================================================
set /p cdate="Please select the Client Date: "
if %cdate%==1 if %mode%==2 ( set client=2012-04-10 ) else ( goto DateMenu )
if %cdate%==2 set client=2015-05-13
if %cdate%==3 set client=2015-10-29
if %cdate%==4 set client=2017-06-14
if %cdate%==5 set client=2017-12-13
if %cdate%==6 set client=2018-06-20
if %cdate%==7 set client=2019-06-05
if %cdate%==8 set client=2020-09-02
if %cdate%==9 set client=2021-10-28
if %cdate%==10 set client=2022-03-30
if %cdate%==11 set client=2022-04-06
if %cdate%==12 set client=2022-06-02
if %cdate%==13 set client=2022-08-31
if %cdate%==14 set client=2022-09-28
if %cdate%==15 set client=2022-12-07
if %cdate%==16 set client=2023-01-18
if %cdate%==17 set client=2023-08-02
if %cdate%==18 set client=2023-09-20
if %cdate%==19 set client=2024-03-11
if %cdate%==20 set client=2024-04-03
if %cdate%==21 set client=2024-05-02
if %cdate%==22 set client=2024-08-07
if %cdate%==23 set client=2024-10-16
if %cdate%==24 set client=2025-01-22
if %cdate%==25 set client=2025-08-02
if %cdate%==26 set client=2025-09-02
if "%client%"=="" exit
cls
echo =================================================================
echo Server Mode: %type%
echo Client Date: %client%
echo =================================================================
set /p check="Proceed?(Y/N): "
if not defined check set "check=Y"
if /i "%check%" NEQ "Y" goto ModeMenu
if exist Client\ rmdir /S /Q Client\
REM Renewal is base for the project
xcopy "..\Translation\Renewal" ".\Client" /E /H /C /I /Y
REM If Pre-Renewal also overwrite existing files from Pre-Renewal
if %mode%==2 xcopy "..\Translation\Pre-Renewal" ".\Client" /E /H /C /I /Y
REM Files for older Clients than the Projects Base Version
if %cdate%==1 call :CopyFD 2012-04-10 %type%
if %cdate%==2 call :CopyFD 2015-05-13 %type%
REM If it's the same as the project version, skip the Loop below
if %cdate%==3 goto EOF
set "x=5"
:DateLoop
REM Files for newer Clients than Base Version
if %x% LEQ %cdate% (
	if %x% EQU 5 call :CopyFD 2017-06-14 %type%
	if %x% EQU 6 call :CopyFD 2017-12-13 %type%
	if %x% EQU 7 call :CopyFD 2018-06-20 %type%
	if %x% EQU 8 call :CopyFD 2019-06-05 %type%
	if %x% EQU 9 call :CopyFD 2020-09-02 %type%
	if %x% EQU 10 call :CopyFD 2021-10-28 %type%
	if %x% EQU 11 call :CopyFD 2022-03-30 %type%
	if %x% EQU 12 call :CopyFD 2022-04-06 %type%
	if %x% EQU 13 call :CopyFD 2022-06-02 %type%
	if %x% EQU 14 call :CopyFD 2022-08-31 %type%
	if %x% EQU 15 call :CopyFD 2022-09-28 %type%
	if %x% EQU 16 call :CopyFD 2022-12-07 %type%
	if %x% EQU 17 call :CopyFD 2023-01-18 %type%
	if %x% EQU 18 call :CopyFD 2023-08-02 %type%
	if %x% EQU 19 call :CopyFD 2023-09-20 %type%
	if %x% EQU 20 call :CopyFD 2024-03-11 %type%
	if %x% EQU 21 call :CopyFD 2024-04-03 %type%
	if %x% EQU 22 call :CopyFD 2024-05-02 %type%
	if %x% EQU 23 call :CopyFD 2024-08-07 %type%
	if %x% EQU 24 call :CopyFD 2024-10-16 %type%
	if %x% EQU 25 call :CopyFD 2025-01-22 %type%
	if %x% EQU 26 call :CopyFD 2025-08-02 %type%
	set /a "x+=1"
	goto DateLoop
)
if exist ..\Translation\Compatibility\%client%\%type%\ (
	xcopy "..\Translation\Compatibility\%client%\%type%\" ".\Client\" /E /H /C /I /Y
) else (
	xcopy "..\Translation\Compatibility\%client%\" ".\Client\" /E /H /C /I /Y
)
REM Removes legacy hateffectinfo files used by older clients only, with 2024-04-17 new files are required
if %cdate% geq 19 (
	if exist ".\Client\data\luafiles514\lua files\hateffectinfo\" rmdir /S /Q ".\Client\data\luafiles514\lua files\hateffectinfo\"
)
:EOF
pause
exit

:CopyFD
if exist ..\Translation\Compatibility\%1\%2\ (
	xcopy "..\Translation\Compatibility\%1\%2\" ".\Client\" /E /H /C /I /Y
) else (
	xcopy "..\Translation\Compatibility\%1\" ".\Client\" /E /H /C /I /Y
)