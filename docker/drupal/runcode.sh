mkdir -p /var/www/html/sites/default 
cp settings.php.default /var/www/html/sites/default
echo "\$databases['default']['default'] = array (
  'database' => '$MYSQL_DATABASE',
  'username' => '$MYSQL_USER',
  'password' => '$MYSQL_PASSWORD',
  'prefix' => '',
  'host' => '$MYSQL_HOST'
  'port' => '3306,
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql'
  );" >> /var/www/html/sites/default
