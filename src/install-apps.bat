:: Batch Script
:: requires choco

:: ab hier kann alles problemlos angepasst werden. ::
:: from now on you can adjust everything ::

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
