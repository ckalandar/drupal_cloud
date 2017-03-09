***** Installation of Docker
	Read this firsts. https://docs.docker.com/engine/installation/#platform-support-matrix
	Install for Ubuntu is found here: https://docs.docker.com/engine/installation/linux/ubuntu/#recommended-extra-packages-for-trusty-1404 
***** Installation of Docker Compose
 	sudo curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
	Verify version using docker-compose --version (version should match Docker version also) 
***** Steps 
	On machines that have Docker installed and where you can want Drupal, Mysql, Redis and Varnish
		docker-compose up -d 
	This will install all of them under differnt containers. 
		 Port 8000 is exposed to world for Drupal, but the compose file can be changed to your needs. 
		Redis is exposed on port 6379. 
		Varnish is exposed on Port 80. 
	For Nagios/Solr machines integration, run docker-compose -f docker-compose-nagios-solr.yml


NB: Some of the install scripts are dynamic and you may require git to be installed first the client.  