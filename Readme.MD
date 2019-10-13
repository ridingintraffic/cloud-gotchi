# minio notes
https://docs.min.io/docs/minio-client-complete-guide

# build setup
#run this on your linux or mac host NOT the gotchi
./build-tarball.sh


initial setup
# copy the ssh key from your host to the gotchi 
ssh-copy-id -i ~/.ssh/id_rsa pi@10.0.0.2

# copy the install.tar that was created from create-tarball.sh
scp install.tar pi@10.0.0.2:~/
ssh pi@10.0.0.2
sudo su
mv install.tar /root/
cd /root

tar xvf install.tar

./one.sh
./two.sh



-----
# backup and config
./backup.sh # will backup specific files
./config-seed.sh # will clone configuration for prep to the new build.

