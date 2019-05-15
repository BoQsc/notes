# notes


Asks for administrator password and Opens a file to edit with administrator privilegies.  
`gedit admin:///etc/default/grub`  
`nautilus admin:///etc/default/` - **NOTICE:** opening the "/" folder (by pressing "+ Other Places" ![gd](./other-places.png)) leads to standard behaviour.  

Source: https://askubuntu.com/questions/281119/how-do-you-run-update-grub/281163#281163







Show Shutdowns and Reboots: `last --system`

`last --system runlevel` - Lists the times when computer was running.  
`last --system shutdown` - Lists the times the computer was shutdown.  
`last --system reboot` - Lists the times the computer was rebooted.  





Disable lock screen, as it is annoying to type a password every time the monitor screen turn off
`gsettings set org.gnome.desktop.lockdown disable-lock-screen true`
