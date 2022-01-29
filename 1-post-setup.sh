echo "======================================================"
echo "=] 1. BIOS/Legacy"
echo "=] 2. UEFI [Beta Test]"
echo "=] 3. HYBRID [Direkomendasikan Untuk Media External/Beta test]"
echo "======================================================="
read -p ">> Pilih Jenis Boot (1/2/3) : " boot
read -p "->] Input Nama Komputer Arch Linux (Contoh : pc atau acer) = " hstname
read -p "->] Input Jumlah ZRAM (Contoh 8192) terhitung satuan Mega Byte = " zramd
echo ""
echo "======================================================="
lsblk
echo "======================================================="
echo ""
read -p "->] Input Drive untuk install Bootloader (Contoh : sda, sdb, atau nvmen1) = " drive
#Add parallel downloading
#sed -i 's/^#Para/Para/' /etc/pacman.conf
sed -i 's/^#ParallelDownloads = 5/ParallelDownloads = 2/' /etc/pacman.conf
#Enable multilib
#sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
pacman -Syyu
#basestrap
pacstrap /mnt --needed - < arrch/_base.txt
pacstrap /mnt --needed - < arrch/_base.txt
pacstrap /mnt --needed - < arrch/_base.txt
pacstrap /mnt --needed - < arrch/_base.txt
pacstrap /mnt --needed - < arrch/_base.txt
genfstab -U /mnt >> /mnt/etc/fstab
clear
echo "zramd=$zramd" >> arrch/install.conf
echo "boot=$boot" >> arrch/install.conf
echo "hstname=$hstname" >> arrch/install.conf
echo "drive=$drive" >> arrch/install.conf
cp -rf arrch /mnt
