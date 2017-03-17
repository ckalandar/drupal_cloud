# refer to the installation guide for Amazon EFS
#sudo apt-get install -y nfs-common
sudo umount /efs
sudo mkdir -p /efs
sudo mkdir -p /var/lib/mysql 
sudo mkdir -p /tmp/html 
sudo mkdir -p /var/www/html 
# the following fs name will change based on your actual EFS instance
#sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 fs-59ae0510.efs.us-east-1.amazonaws.com:/ /efs
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 fs-fab912b3.efs.us-east-1.amazonaws.com:/ efs

# Keep changes together
sudo useradd www-data
sudo usermod -u 495 www-data
sudo groupmod -g 495 www-data 
sudo usermod -g 495 www-data 
#sudo find /var/www -exec chown -h 495 {} \; 
#sudo find /var/www -exec chgrp -h 495 {} \; 
# create and link files.. 
sudo chown -R www-data:www-data /efs
sudo chown -R www-data:www-data /var/www
#Kill all ids.. 
$HOME/drupal_cloud_formation/docker/scripts/kill_all.sh
docker-compose -f $HOME/drupal_cloud_formation/docker/docker-compose.yml  up -d  
#cp -r /tmp/html /var/www
# at this point of time, if you see nothins under /var/www/html, the and only then 
# cp -r /install_dir/* /var/www/html && chown -R www-data:www-data /var/www
echo "Done" 
#rm -rf /tmp/html
