:: Batch Script
:: requires choco and firefox
:: downloads and installs filius
echo this will install filius.
echo.

:: Privilige escalation
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

:: JAVA
choco install jre8

:: FILIUS
:: Get Desktop Location
for /f "usebackq tokens=1,2,*" %%B IN (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) do set DESKTOP=%%D

:: go to the desktop
cd %Desktop%

:: download and run
powershell -Command "Invoke-WebRequest http://www.lernsoftware-filius.de/downloads/Filius-Setup-1.7.4.exe -OutFile Filius-Setup-1.7.4.exe"
start Filius-Setup-1.7.4.exe

:: open docs
start "C:\Programme\Mozilla Firefox\firefox.exe" http://www.lernsoftware-filius.de/Begleitmaterial
