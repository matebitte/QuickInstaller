:: Batch Script
:: requires choco
@echo off
echo this will install the set apps
echo.

:: Privilige escalation
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

echo.
echo "this will install the essential software suite"
echo.

:: Set up choco with PS (deactivated)
:: Set-ExecutionPolicy AllSigned
:: Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

:: ab hier kann alles problemlos angepasst werden. ::

:: Firefox
choco install firefox -y
WScript "firefox.vbs"
start "C:\Programme\Mozilla Firefox\firefox.exe" https://accounts.google.com/signin/v2/identifier?service=wise&passive=true&continue=http%3A%2F%2Fdrive.google.com
start "C:\Programme\Mozilla Firefox\firefox.exe" https://onedrive.live.com/about/en-us/signin/

:: Essentials
choco install 7zip.install -y
choco install vlc -y
choco install onlyoffice -y

:: Dev tools
choco install git -y
choco install putty.install -y
choco install vscode -y

:: JDK für Filius
choco install jre8

:: Dev langs
choco install python3 -y

:: Update
choco upgrade all -y