# notes


Asks for administrator password and Opens a file to edit with administrator privilegies.  
`gedit admin:///etc/default/grub`  
`nautilus admin:///etc/default/` - **NOTICE:** opening the "/" folder (by pressing "+ Other Places" ![gd](./other-places.png)) leads to standard behaviour.  

Source: https://askubuntu.com/questions/281119/how-do-you-run-update-grub/281163#281163







Show Shutdowns and Reboots: `last --system`

`last --system runlevel` - Lists the times when computer was running.  
`last --system shutdown` - Lists the times the computer was shutdown.  
`last --system reboot` - Lists the times the computer was rebooted.  



Disable lock screen of suspension, so that lock screen won't be a problem after computer wake up.  
https://askubuntu.com/questions/1029696/disable-password-request-from-from-suspend-18-04/1029805#1029805

Disable lock screen, as it is annoying to type a password every time the monitor screen turn off  
`gsettings set org.gnome.desktop.lockdown disable-lock-screen true`



## Ideas
* Clicking shutdown button on a laptop - stop prompting and directly shut down the computer.  

* On Lid close - do not go to sleep, but shut down the computer.

## Notices
Takes very long time to boot. I assume due to lack of bios support a "quick boot".
