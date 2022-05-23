# QuickInstaller
A set of scripts used to quickly set up an outdated computer. Great for maschines that load a shitty, outdated image on a reboot.
If you use it and feel like something is missing, let me know!

## Usage
1. Download the repo (green button) or clone it with git
2. Edit "install-apps.bat" to your liking
3. Run the "run.bat" as admin   
4. Watch as chocolatery installs and takes care of your apps   
5. Congrats, your pc is now set up with current software. To update it use cmd as admin and execute "choco upgrade all"   

### Edit what it installs
Modify the install-apps bat to your liking. You can look up packeges on the chocolatery website or with "choco find YOURSEARCHTERM".

## Chocolatey QuickStart
- `choco help`
- `choco find APPNAME` | search the chocolatey repos
- `choco install APPNAME` | install an app from the chocolatey repos
- `cinst` == `choco install` | lazy shortcut

---
Tested on Windows 8.1 & windows 10
