#Script for restoring the backup of Arch Linux conf files to the original position as links and deletes the current files
echo "Hi"
echo "If you have a good idea to improve this program" 
echo "or if you want to tell me that you don't like my script "
echo "you can send an email to me. Maybe I even will answer." 
echo "My e-mail Adress : lefterisandrianakis@gmail.com"
echo "I am thankful for every Feedback."
echo ""
echo "This script is going to delete the original files and then restore the backedup files as links to the original location."
echo ""
echo "Do you want to delete the BackedUp system files?"
echo "Your answer y / n :"
read answer

if [ $answer = n ]; then
	echo "Thank you. Bye!"
	exit
fi

if [ $answer = y ]; then 
  echo "Okay lets start!"
  echo "Removing system files."
  sudo rm -R /etc/modules-load.d
  sudo rm -R /etc/modprobe.d
  sudo rm -R /etc/cron.* 
  sudo rm -R /etc/samba 
  sudo rm -R /etc/conf.d 
  sudo rm -R /etc/X11
  sudo rm -R /home/$USER/.conky
  sudo rm /etc/sddm.conf 
#  sudo rm /etc/fstab ##It's not working for me because i have the backup folder on another hdd.
  sudo rm /etc/mkinitcpio.conf 
  sudo rm /etc/pacman.conf 
  sudo rm /etc/bash.bashrc 
  sudo rm /home/$USER/.bashrc
  sudo rm /etc/motd 
  echo "Done! All Files have been removed."
fi
echo ""
echo "Do you want to create symbolic links to the original location?"
echo "Your answer y / n :"
read answer

if [ $answer = n ]; then
	echo "Thank you. Bye!"
	exit
fi

if [ $answer = y ] then;
  echo "Okay lets start!"
  sudo ln -s $PWD/modules-load.d /etc/modules-load.d 
  sudo ln -s $PWD/modprobe.d /etc/modprobe.d
  sudo ln -s $PWD/cron/cron.* /etc/ 
  sudo ln -s $PWD/samba /etc/samba 
  sudo ln -s $PWD/conf.d /etc/conf.d 
  sudo ln $PWD/X11 /etc/X11
  sudo ln -s $PWD/conky /home/nenpo/.conky
  sudo ln -s $PWD/sddm.conf /etc/sddm.conf 
#  sudo ln $PWD/fstab /etc/fstab ##It's not working for me because i have the backup folder on another hdd.
  sudo ln -s $PWD/mkinitcpio.conf /etc/mkinitcpio.conf 
  sudo ln -s $PWD/pacman.conf /etc/pacman.conf 
  sudo ln -s $PWD/bash.bashrc /etc/bash.bashrc 
  sudo ln -s $PWD/bash.bashrc /home/nenpo/.bashrc
  sudo ln -s $PWD/motd /etc/motd
fi
