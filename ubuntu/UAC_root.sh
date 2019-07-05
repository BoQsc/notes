#!/bin/bash

# Checks if you sucessfully entered sudo password  
# and if the script is launched with sudo. (with temporal root)
if [ "$USER" = "root" ];
then

source "install-gnome-extension-for-firefox.sh";





  echo "----------YAS HAVE SUDO----------";
  #head /etc/sudoers;


  # Support mounting exFAT drive on Ubuntu Linux
  # My personal 2TB portable hardrive seems to need this
  # apt -y install exfat-fuse exfat-utils
  
else
  exec sudo bash "$0" "$@";
fi



function head() {

command head $1;

}
