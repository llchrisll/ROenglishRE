@echo off
echo =================================================================
echo Welcome to the Lua Converter!
echo This will help you to convert from raw lua files into compressed/encoded/compiled lub files.
echo But you also can use uncompressed .lub files.
echo.
echo 1. Move the file in the same folder or a sub-directory as this .bat and luac.exe.
echo 2. Use this .bat file and follow the steps.
echo 3. Let the magic do it's thing and enjoy.
echo =================================================================
pause
set /p sub="Please write the name of the sub-directory (leave it empty for none): "
echo =================================================================
set /p file="Please write the file name (eg.: itemInfo): "
if not defined file exit
echo =================================================================
set /p ext="Please write the file's extension (eg.: .lua): "
if not defined ext exit
if not defined sub (
	if not exist %file%%ext% (
		echo File not found, exiting...
		goto EOF
	)
	echo Uncompressed File: %file%%ext%
	./bin/luac.exe -o %file%.lub %file%%ext%
) else (
	if not exist %sub%\%file%%ext% (
		echo File not found, exiting...
		goto EOF
	)
	echo Uncompressed File: %sub%\%file%%ext%
	./bin/luac.exe -o %file%.lub %sub%\%file%%ext%
)
echo Compressed File: %file%.lub
:EOF:
pause
exit