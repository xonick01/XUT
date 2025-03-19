echo "Xonick's Ubuntu Tweaks Script"
#Software Add/Remove
sudo apt -y update
sudo apt -y remove gnome-characters gnome-font-viewer gnome-characters gnome-logs gnome-user-docs yelp software-properties-* gnome-accessibility-themes gnome-calculator gnome-clocks gnome-system-monitor gnome-text-editor gnome-keyring* evince libreoffice*
sudo apt -y upgrade
sudo apt -y autoremove

#UI Tweaks
mkdir /home/xonick/.themes
mkdir /home/xonick/.icons
tar -xf WhiteSur-Dark.tar.xz -C /home/xonick/.themes
tar -xf Cupertino-Sonoma.tar.xz -C /home/xonick/.icons

dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height false
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position '"BOTTOM"'
dconf write /org/gnome/desktop/interface/color-scheme '"prefer-dark"'
dconf write /org/gnome/desktop/interface/gtk-theme "'WhiteSur-Dark'"
dconf write /org/gnome/desktop/interface/icon-theme "'Cupertino-Sonoma'"

echo "Completed"
