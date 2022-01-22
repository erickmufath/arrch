cd /home/${usrname}/
git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes
rm -rf ~/.config/tint2
git clone https://github.com/addy-dclxvi/tint2-theme-collections ~/.config/tint2 --depth 1
cp ~/.config/tint2/minima/minima.tint2rc ~/.config/tint2/tint2rc
mkdir ~/.config/openbox
cp ~/arrtx/rc.xml ~/.config/openbox
cp ~/arrtx/autostart ~/.config/openbox
git clone https://aur.archlinux.org/yay.git 
cd yay
makepkg -si --noconfirm
cd ..
