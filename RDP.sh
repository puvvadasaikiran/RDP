#! /bin/bash
printf "Installing RDP Be Patience... " >&2
{
sudo useradd -m PSK1
sudo adduser PSK1 sudo
echo 'PSK1:8426' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi
sudo dpkg --install chromeremotedesktophost.msi
sudo apt install --assume-yes --fix-broken
# sudo DEBIAN_FRONTEND=noninteractive \
# apt install --assume-yes xfce4 desktop-base
# sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
# sudo apt install --assume-yes xscreensaver
# sudo systemctl disable lightdm.service
# wget https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi
# sudo dpkg --install chromeremotedesktophost.msi
# sudo apt install --assume-yes --fix-broken
# sudo apt install nautilus nano -y 
# sudo adduser ALOK chrome-remote-desktop
# } &> /dev/null &&
# printf "\nSetup Complete " >&2 ||
# printf "\nError Occured " >&2
# printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
# read -p "Paste Here: " CRP
# su - ALOK -c """$CRP"""
# printf 'Check https://remotedesktop.google.com/access/ \n\n'
# if sudo apt-get upgrade &> /dev/null
# then
#     printf "\n\nUpgrade Completed " >&2
# else
#     printf "\n\nError Occured " >&2
# fi
}
