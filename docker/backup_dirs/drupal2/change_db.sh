#Usage:
#    <path>/change_db.sh <drupaldb> <drupalmysqluser> <drupalmysqlpassword> <drupalmysqldb>
sed  -i "s/'database' => 'drupal'/'database' => '$1'/" /var/www/html/sites/default/settings.php
sed  -i "s/'username' => 'drupal'/'username' => '$2'/" /var/www/html/sites/default/settings.php
sed  -i "s/'password' => 'drupal'/'password' => '$3'/" /var/www/html/sites/default/settings.php
sed  -i "s/'host' => '172\.18\.0\.2/'host =' => '$4/"  /var/www/html/sites/default/settings.php 
