@echo off
:ModeMenu
cls
echo Modes
echo ======
echo [1] Renewal
echo [2] Pre-Renewal
echo.
set /p mode="Please select the mode:"
if %mode%==1 (
	set "type=Renewal"
) else if %mode%==2 (
	set "type=Pre-Renewal"
) else goto ModeMenu
:DateMenu
cls
echo Client Dates
echo ======
echo [1] 2012-04-10 (Pre-Re only)
echo [2] 2015-05-13
echo [3] 2017-06-14
echo [4] 2017-12-13
echo [5] 2018-01-24
echo [6] 2018-06-20
echo [7] 2019-06-05
echo [8] 2020-09-02
echo [9] 2021-10-28
echo [10] 2022-03-30
echo [11] 2022-04-06
::echo [12] 2023-03
::echo [13] 2023-06
::echo [14] 2023-07
::echo [15] 2023-10
echo.
set /p date="Please select the Client Date:"
if %date%==1 if %mode%==2 set "client=2012-04-10" else goto DateMenu
if %date%==2 set "client=2015-05-13"
else if %date%==3  set "client=2017-06-14"
else if %date%==4 (
	set "client=2017-12-13"
) else if %date%==5 (
	set "client=2018-01-24"
) else if %date%==6 (
	set "client=2018-06-20"
) else if %date%==7 (
	set "client=2019-06-05"
) else if %date%==8 (
	set "client=2020-09-02"
) else if %date%==9 (
	set "client=2021-10-28"
) else if %date%==10 (
	set "client=2022-03-30"
) else if %date%==11 (
	set "client=2022-04-06"
::) else if %date%==12 (
::	set "client=2023-03"
::) else if %date%==13 (
::	set "client=2023-06"
::) else if %date%==14 (
::	set "client=2023-07"
::) else if %date%==15 (
::	set "client=2023-10"
)
if "%client%"=="" exit
cls
echo ======
echo Mode: %type%
echo Client Date: %client%
echo ===
set /p check="Correct? (Y/N)"
if /i "%check%" NEQ "Y" goto ModeMenu
if exist Client\ rmdir /S /Q Client\
xcopy "..\Translation\%type%" ".\Client" /E /H /C /I /Y
set "x=4"
:DateLoop
REM Starting DateLoop
if %x% LEQ %date% (
	if %x% EQU 4 call :CopyFD 2017-06-14 %type%
	if %x% EQU 5 call :CopyFD 2017-12-13 %type%
	if %x% EQU 6 call :CopyFD 2018-01-24 %type%
	if %x% EQU 7 call :CopyFD 2018-06-20 %type%
	if %x% EQU 8 call :CopyFD 2019-06-05 %type%
	if %x% EQU 9 call :CopyFD 2020-09-02 %type%
	if %x% EQU 10 call :CopyFD 2021-10-28 %type%
	if %x% EQU 11 call :CopyFD 2022-03-30 %type%
	if %x% EQU 12 call :CopyFD 2022-04-06 %type%
	if %x% EQU 13 call :CopyFD 2023-03 %type%
	if %x% EQU 14 call :CopyFD 2023-06 %type%
	if %x% EQU 15 call :CopyFD 2023-07 %type%
	set /a "x+=1"
	goto DateLoop
)
REM Ending DateLoop
if exist ..\Translation\Compatibility\%client%\%type%\ (
	xcopy "..\Translation\Compatibility\%client%\%type%\" ".\Client\" /E /H /C /I /Y
) else (
	xcopy "..\Translation\Compatibility\%client%\" ".\Client\" /E /H /C /I /Y
)
pause
exit

:CopyFD
if exist ..\Translation\Compatibility\%1\%2\ (
	xcopy "..\Translation\Compatibility\%1\%2\" ".\Client\" /E /H /C /I /Y
) else (
	xcopy "..\Translation\Compatibility\%1\" ".\Client\" /E /H /C /I /Y
)