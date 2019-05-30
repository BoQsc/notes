# notes
```
[Asus N53SV]
MatchName=*ETPS/2 Elantech Touchpad*
MatchDMIModalias=dmi:*svnASUSTeKComputerInc.:pnN53SV:*
AttrPressureRange=

naudotojas@naudotojas-N53SV:~$ libinput --version
1.12.6

naudotojas@naudotojas-N53SV:~$ sudo libinput list-devices
Device:           ETPS/2 Elantech Touchpad
Kernel:           /dev/input/event4
Group:            9
Seat:             seat0, default
Size:             37x19mm
Capabilities:     pointer 
Tap-to-click:     disabled
Tap-and-drag:     enabled
Tap drag lock:    disabled
Left-handed:      disabled
Nat.scrolling:    disabled
Middle emulation: n/a
Calibration:      n/a
Scroll methods:   *two-finger edge 
Click methods:    none
Disable-w-typing: enabled
Accel profiles:   none
Rotation:         n/a
 
 
naudotojas@naudotojas-N53SV:~$ sudo libinput record /dev/input/event4
Recording to 'stdout'.
version: 1
ndevices: 1
libinput:
  version: "1.12.6"
  git: "unknown"
system:
  kernel: "5.0.0-13-generic"
  dmi: "dmi:bvnAmericanMegatrendsInc.:bvrN53SV.212:bd04/07/2011:svnASUSTeKComputerInc.:pnN53SV:pvr1.0:rvnASUSTeKComputerInc.:rnN53SV:rvr1.0:cvnASUSTeKComputerInc.:ct10:cvr1.0:"
devices:
- node: /dev/input/event4

```





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

* Make Alt + Shift to change Input Language, instead of Alt + Space.

## Notices
Takes very long time to boot. I assume due to lack of bios support a "quick boot".




### Disable Wake up through bluetooth devices on suspension
```
cat /proc/acpi/wakeup
naudotojas@naudotojas-N53SV:~/Darbalaukis$ echo EHC1 | sudo tee /proc/acpi/wakeup
EHC1
naudotojas@naudotojas-N53SV:~/Darbalaukis$ echo EHC1 | sudo tee /proc/acpi/wakeup
EHC2
naudotojas@naudotojas-N53SV:~/Darbalaukis$ echo XHCI | sudo tee /proc/acpi/wakeup
XHCI
cat /proc/acpi/wakeup
```
#### New Nvidia Drivers https://nouveau.freedesktop.org/wiki/
Check Nvidia devices `ubuntu-drivers devices`


#### AMDGPU Or RADEON drivers
 ```
vaidas@vaidas-SATELLITE-L855:~$ sudo lshw -c video
  *-display                 
       description: VGA compatible controller
       product: Thames [Radeon HD 7500M/7600M Series]
       vendor: Advanced Micro Devices, Inc. [AMD/ATI]
       physical id: 0
       bus info: pci@0000:01:00.0
       version: 00
       width: 64 bits
       clock: 33MHz
       capabilities: pm pciexpress msi vga_controller bus_master cap_list rom
       configuration: driver=radeon latency=0
       resources: irq:29 memory:b0000000-bfffffff memory:c0000000-c001ffff ioport:3000(size=256) memory:c0040000-c005ffff

```


### Underclocking AMD Radeon GPU

```
sudo su
cat /sys/class/drm/card0/device/power_dpm_force_performance_level
echo low > /sys/class/drm/card0/device/power_dpm_force_performance_level
cat /sys/class/drm/card0/device/power_dpm_force_performance_level

cat /sys/class/drm/card0/device/power_dpm_state
echo battery > /sys/class/drm/card0/device/power_dpm_state
cat /sys/class/drm/card0/device/power_dpm_state
```  
**Source:** https://askubuntu.com/questions/1127581/unable-to-change-power-profile-for-amd-radeon-graphics-card/1132594#1132594  
**More information:** https://wiki.archlinux.org/index.php/ATI#Dynamic_power_management  

>Note: In sysfs, paths like /sys/class/drm/... are just symlinks and may change between reboots. Persistent locations can be found in /sys/devices/, e.g. /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/. Adjust the commands accordingly for a reliable result.  
**Source:** https://wiki.archlinux.org/index.php/AMDGPU#Overclocking


### AMD GPU DRIVERS NEWS
https://www.phoronix.com/scan.php?page=news_item&px=xf86-video-ati-amdgpu-19.0.1
https://lists.freedesktop.org/archives/xorg/2019-March/059717.html
https://www.reddit.com/r/linuxquestions/comments/3zwlwn/should_i_install_xf86videoamdgpu_or_stick_to/

