:: Batch Script
@echo off
echo.
echo.
echo.

:: Header
echo leo's quickinstaller
echo.
echo copyright "@lenowac", 2019
echo.
echo.
echo this set of scripts will run the choco installer and install some essential apps with it.
timeout 5

:: Make some room
echo.
echo.
echo.
echo.
echo.

:: Adminrechte holen
echo getting privileges...

set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

echo.
echo.
echo.

:: Install choco 
echo next up: chocolatery
echo.
call "install-choco.bat"

echo.
echo.
echo.
:: Install Apps
echo next up: some apps
timeout 3
echo.
call "install-apps.bat"

echo.
echo.
echo.

:: Install VS-Code Extensions
echo next up: vscode extensions
timeout 3
echo.
call "install-vsc_ext.bat"

echo.
echo.
echo.

echo done :)

echo press
timeout 10
EXIT
