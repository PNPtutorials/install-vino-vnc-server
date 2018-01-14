echo "performing updates"
sudo apt-get update

sudo echo "**********************Installing Vino************************"
sudo apt-get -y install vino
sudo gsettings set org.gnome.Vino prompt-enabled false
sudo gsettings set org.gnome.Vino require-encryption false

sudo echo "VNC server setup done"
sudo mkdir /root/home/pi/.config/autostart

sudo echo "**********************Making autorun VNC script************************"
sudo echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=VINO
Comment=
Exec=/usr/lib/vino/vino-server
StartupNotify=false
Terminal=false
Hidden=false" > /root/.config/autostart/vino.desktop

sudo echo "VNC autorun on startup done"
