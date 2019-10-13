echo "what is the s3/minio host referenced in the config?"
read cloud_host

/root/mc cp $cloud_host/pwnagotchi/$(hostname)/brain.json /root/brain.json --insecure
/root/mc cp $cloud_host/pwnagotchi/$(hostname)/brain.nn /root/brain.nn --insecure
/root/mc cp $cloud_host/pwnagotchi/$(hostname)/config.yml /etc/pwnagotchi/config.yml --insecure

