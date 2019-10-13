echo "what is the s3/minio host referenced in the config?"
read cloud_host

/root/mc cp /root/brain.json $cloud_host/pwnagotchi/$(hostname)/ --insecure
/root/mc cp /root/brain.nn $cloud_host/pwnagotchi/$(hostname)/  --insecure
/root/mc cp /etc/pwnagotchi/config.yml $cloud_host/pwnagotchi/$(hostname)/ --insecure
/root/mc mirror /root/handshakes/ $cloud_host/pwnagotchi/$(hostname)/handshakes/ --force --insecure
