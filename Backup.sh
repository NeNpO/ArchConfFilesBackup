#Sh Script for taking backup of Arch Linux conf files to the current folder
echo "Hi"
echo "If you have a good idea to improve this program" 
echo "or if you want to tell me that you don't like my script "
echo "you can send an email to me. Maybe I even will answer." 
echo "My e-mail Adress : lefterisandrianakis@gmail.com"
echo "I am thankful for every Feedback."
echo ""
echo "This script is going to backup the original files to your current location."
echo ""
echo "Do you want a list of the files that will be backed up? (y/n):"; read answer
if [ $answer = n ]; then
  echo ""
  echo "Ok, lets go on!"
fi
if [ $answer = y ]; then
  echo ""
  echo "The following packages will be backed up:"
  echo "  /etc/modules-load.d
  /etc/modprobe.d
  /etc/cron.*
  /etc/samba/
  /etc/conf.d/
  /etc/X11/
  /boot/
  /home/$USER/.conky/*
  /etc/sddm.conf
  /etc/fstab
  /etc/mkinitcpio.conf
  /etc/pacman.conf
  /etc/bash.bashrc
  /etc/motd"
fi
echo ""
echo "Do you want to copy files in Backup folder into the current folder. (y/n):"; read answer

if [ $answer = n ]; then
  echo ""
	echo "Thank you. Bye!"
	exit
fi

if [ $answer = y ]; then 
  echo "Okay lets start!"
  mkdir BackUpConfFiles
  cd BackUpConfFiles
  cp -Rv /etc/modules-load.d .
  cp -Rv /etc/modprobe.d .
  mkdir ./cron
  cp -Rv /etc/cron.* ./cron
  cp -Rv /etc/samba .
  cp -Rv /etc/conf.d .
  cp -Rv /etc/X11 .
  cp -Rv /boot ./boot ##This is just for having a backup of the file only and it's not linked back.
  mkdir ./conky
  cp -Rv /home/$USER/.conky/* ./conky
  cp -v /etc/sddm.conf .
  cp -v /etc/fstab . ##This is just for having a backup of the file only and it's not linked back.
  cp -v /etc/mkinitcpio.conf .
  cp -v /etc/pacman.conf .
  cp -v /etc/bash.bashrc .
  cp -v /etc/motd .
  echo ""
  echo "Everything is Done!"
fi
