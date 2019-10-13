echo "what is the s3/minio host referenced in the config?"
read cloud_host

files=("/root/brain.nn" "/root/brain.json" "/root/handshakes/" "/etc/pwnagotchi/" "/etc/hostname" "/etc/hosts" "/etc/motd" "/var/log/pwnagotchi.log")
tar cvzf /tmp/backup.tar.gz "${files[@]}"
/root/mc cp /tmp/backup.tar.gz $cloud_host/pwnagotchi/backups/$(hostname)-$(date +%s).tar.gz --insecure

