:: Batch Script
:: requires choco

:: ab hier kann alles problemlos angepasst werden. ::
:: from now on you can adjust everything ::

:::: Essentials ::::
cinst firefox -y
cinst 7zip.install -y
cinst vlc -y
cinst onlyoffice -y

:::: Recommended ::::
cinst quicklook -y
cinst file-converter -y
cinst vscode -y
::cinst bitwarden -y 
::NOTE:: decent bitwarden alternative: keepassxc

:::: Creative ::::
::cinst lunacy -y 
::NOTE:: fast and simple design programm
::cinst obs-studio -y
::NOTE:: screen recording and livestreaming
::cinst bitwig -y 
::NOTE:: digital audio workstation (not free)
::cinst adobe-creative-cloud -y

:::: Update ::::
choco upgrade all -y
