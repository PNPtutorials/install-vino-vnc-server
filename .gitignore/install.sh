sudo apt-get update

echo "**********************Installing Vino************************"
apt-get -y install vino
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false

echo "VNC server setup done"
mkdir /root/.config/autostart

echo "**********************Making autorun VNC script************************"
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=VINO
Comment=
Exec=/usr/lib/vino/vino-server
StartupNotify=false
Terminal=false
Hidden=false" > /root/.config/autostart/vino.desktop

echo "VNC autorun on startup done"
