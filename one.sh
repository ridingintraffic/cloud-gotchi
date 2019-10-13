sudo su
echo "hostname to change to?"
read new_host
rm /etc/hostname
echo "$new_host" > /etc/hostname

tar xvf minio.tar
reboot
