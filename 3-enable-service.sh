source /arrch/install.conf
sed -i 's/^# MAX_SIZE/MAX_SIZE/' /etc/default/zramd
sed -i 's/^8192/${zramd}/' /etc/default/zramd
systemctl enable cups
systemctl enable zramd
systemctl enable ntpd.service
systemctl disable dhcpcd.service
systemctl stop dhcpcd.service
systemctl enable NetworkManager.service
systemctl enable bluetooth
