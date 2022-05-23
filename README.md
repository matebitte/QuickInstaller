# QuickInstaller
A set of scripts used to quickly set up a computer. Great QuickStart for your new laptop.
If you use it and feel like something is missing, let me know!

## Usage
1. Download the repo (green button) or clone it with git
2. Edit "install-apps.bat" to your liking
3. Double click "run.bat"
4. Watch as chocolatery installs and takes care of your apps   

Congrats, your pc is now set up! BUT: be sure to keep it updated! 
Chocolatey repos aren't always up to date immedeatly, but `choco upgrade all` is still a neat way to update most stuff to a soonish state.

### Edit what it installs
Modify the install-apps bat to your liking. You can look up packeges on the chocolatery website or with "choco find YOURSEARCHTERM".

## Chocolatey QuickStart
- `choco help`
- `choco find APPNAME` | search the chocolatey repos
- `choco install APPNAME` | install an app from the chocolatey repos
- `cinst` == `choco install` | lazy shortcut

---
Tested on Windows 8.1 & windows 10
