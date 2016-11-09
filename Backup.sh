#Sh Script for taking backup of Arch Linux conf files to the current folder
echo "Hi"
echo "If you have a good idea to improve this program" 
echo "or if you want to tell me that you don't like my script "
echo "you can send an email to me. Maybe I even will answer." 
echo "My e-mail Adress : nenpo@hotmail.com"
echo "I am thankful for every Feedback."
echo ""
echo "Copying files in Backup folder into the current folder."

mkdir BackUpConfFiles
cd BackUpConfFiles
cp -Rv /etc/modules-load.d .
cp -Rv /etc/modprobe.d .
mkdir ./cron
cp -Rv /etc/cron.* ./cron
cp -Rv /etc/samba .
cp -Rv /etc/conf.d .
cp -Rv /etc/X11 .
cp -Rv /boot ./boot
mkdir ./conky
cp -Rv /home/$USER/.conky/* ./conky
cp -v /etc/sddm.conf .
cp -v /etc/fstab .
cp -v /etc/mkinitcpio.conf .
cp -v /etc/pacman.conf .
cp -v /etc/bash.bashrc .
cp -v /etc/motd .
echo "Everything is Done!"
