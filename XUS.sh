echo "Xonick's Ubuntu Tweaks Script"
#Software Add/Remove

sudo apt -y update
sudo apt -y install gnome-tweaks gnome-shell-extension-manager gnome-shell-extension-user-theme curl
sudo apt -y remove gnome-characters gnome-font-viewer gnome-characters gnome-logs gnome-user-docs yelp software-properties-* gnome-accessibility-themes gnome-calculator gnome-clocks gnome-system-monitor gnome-text-editor gnome-keyring* evince libreoffice* firefox*
sudo apt -y upgrade
sudo apt -y autoremove
curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list "https://ppa.floorp.app/Floorp.list"
sudo apt -y update
sudo apt -y install floorp

#UI Tweaks
mkdir ~/.themes
mkdir ~/.icons
cd ~/
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
cd WhiteSur-gtk-theme
./install.sh -t all -l -c dark
sudo ./tweaks.sh -g -b blank 
wget https://github.com/vinceliuice/WhiteSur-icon-theme/archive/refs/tags/v2025-02-10.zip
unzip v2025-02-10.zip -d ~/.icons
cd ~/.icons/WhiteSur-icon-theme-2025-02-10/
chmod +x install.sh
./install.sh

dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height false
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position '"BOTTOM"'
dconf write /org/gnome/desktop/interface/color-scheme '"prefer-dark"'
dconf write /org/gnome/desktop/interface/gtk-theme "'WhiteSur-Dark'"
dconf write /org/gnome/desktop/interface/icon-theme "'WhiteSur'"

echo "Completed"
