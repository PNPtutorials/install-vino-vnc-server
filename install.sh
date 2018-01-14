echo "performing updates"
sudo apt-get update

sudo echo "**********************Installing Vino************************"
sudo apt-get -y install vino
sudo gsettings set org.gnome.Vino prompt-enabled false
sudo gsettings set org.gnome.Vino require-encryption false

sudo echo "VNC server setup done"
sudo mkdir /home/pi/.config/autostart

sudo echo "**********************Making autorun VNC script************************"
sudo echo "[Desktop Entry]\nEncoding=UTF-8\nType=Application\nName=VINO\nComment=\nExec=/usr/lib/vino/vino-server\nStartupNotify=false\nTerminal=false\nHidden=false\n" > /home/pi/.config/autostart/vino.desktop

sudo echo "VNC autorun on startup done"
