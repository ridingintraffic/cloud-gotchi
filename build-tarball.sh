#!/usr/local/bin/bash
#go get minio for mac or linux 
#uncomment the os you are one
#linux x86
#wget https://dl.min.io/client/mc/release/linux-amd64/mc

#linux arm
#wget https://dl.min.io/client/mc/release/linux-arm/mc

#macos
#wget https://dl.min.io/client/mc/release/darwin-amd64/mc

chmod +x mc

#add your minio/s3 host and key
mc config host add minio http://192.168.1.51 BKIKJAA5BMMU2RHO6IBB V7f1CwQqAcwo80UEIJEjc5gVQUSSx5ohQ9GSrr12 --api S3v4
#mc config host add s3 https://s3.amazonaws.com BKIKJAA5BMMU2RHO6IBB V7f1CwQqAcwo80UEIJEjc5gVQUSSx5ohQ9GSrr12 --api S3v4

# clean out the old mc and grab the arm version for gotchi
rm mc
wget https://dl.min.io/client/mc/release/linux-arm/mc
chmod +x mc

#after minio config added gonna copy the json
tar cvf minio.tar ~/.mc/config.json mc 

# tar up everything else
tar cvf install.tar one.sh minio.tar two.sh backup.sh config-seed.sh