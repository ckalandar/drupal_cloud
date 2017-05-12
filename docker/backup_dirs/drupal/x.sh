#Usage:
#    <path>/change_db.sh <drupaldb> <drupalmysqluser> <drupalmysqlpassword> <drupalmysqldb>
sed   "s/'database' => 'drupal'/'database' => '$1'/" /var/www/html/sites/default/settings.php
