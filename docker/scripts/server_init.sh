# refer to the installation guide for Amazon EFS
#sudo apt-get install -y nfs-common
sudo umount /efs
sudo mkdir -p /efs
sudo mkdir -p /var/lib/mysql 
# the following fs name will change based on your actual EFS instance
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 fs-59ae0510.efs.us-east-1.amazonaws.com:/ /efs

# Keep changes together
sudo usermod -u 495 www-data
sudo groupmod -g 495 www-data 
sudo usermod -g 495 www-data 
#sudo find /var/www -exec chown -h 495 {} \; 
#sudo find /var/www -exec chgrp -h 495 {} \; 
# create and link files.. 
sudo mkdir -p /efs/files
sudo chown -R www-data:www-data /efs/files
sudo mkdir -p /tmp/html 
sudo mkdir -p /var/www/html 
sudo chown -R www-data:www-data /var/www/html
#Kill all ids.. 
/home/ec2-user/drupal_cloud_formation/docker/scripts/kill_all.sh
docker-compose -f $HOME/drupal_cloud_formation/docker/docker-compose.yml up -d 
#cp -r /tmp/html /var/www
echo "Done" 
#rm -rf /tmp/html
