@echo off
title AndroidUnistaller
:START
echo AndroidUnistaller by brkyozell(/AndroidUnistaller on GitHub)
echo If you want see package list type list
set /p packagename= Type package name: 
if %packagename%== list goto LIST
adb shell pm uninstall -k --user 0 %packagename%
echo Press any key and restart.
pause>nul
cls
goto START
:LIST
adb shell pm list packages -f
echo.
echo Press any key and go back.
pause>nul
cls
goto START