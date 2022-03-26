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

:: Internet
cinst firefox -y

:: Essentials
cinst 7zip.install -y
cinst vlc -y
cinst onlyoffice -y

:: Fancy Tools
cinst quicklook -y
cinst file-converter -y
cinst vscode -y
cinst microsoft-windows-terminal -y

:: Creative
cinst lunacy -y
cinst adobe-creative-cloud -y
cinst tidal -y


:: Update
choco upgrade all -y