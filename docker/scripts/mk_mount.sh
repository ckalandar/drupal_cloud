# refer to the installation guide for Amazon EFS
sudo mkdir /efs2
# the following fs name will change based on your actual EFS instance
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 fs-04c76c4d.efs.us-east-1.amazonaws.com:/ /efs2 

# create and link files.. 
sudo mkdir -p /efs2/files
sudo chown -R www-data:www-data /efs2/files
#This is not required... 

