cd ~/drupal_cloud_formation/docker
docker-compose up -d 
cd ~/drupal_cloud_formation/docker/varnish 
docker build -t docker_varnish . 
docker run -itd -p 82:6081 docker_varnish 
