# refer to the installation guide for Amazon EFS
sudo apt-get install -y nfs-common
sudo mkdir /efs
# the following fs name will change based on your actual EFS instance
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 fs-04c76c4d.efs.us-east-1.amazonaws.com:/ /efs

# Keep changes together
sudo usermod -u 495 www-data
sudo groupmod -u 495 www-data 
sudo usermod -g 495 www-data 
sudo find /var/www -exec chown -h 495 {} \; 
sudo find /var/www -exec chgrp -h 495 {} \; 
# create and link files.. 
sudo mkdir -p /efs/files
sudo chown -R www-data:www-data /efs/files
ln -s /efs/files /var/www/html/files 
#Kill all ids.. 
~/drupal_cloud_formation/docker/scripts/kill_all.sh 
cd ~/drupal_cloud_formation
docker-compose up -d 

