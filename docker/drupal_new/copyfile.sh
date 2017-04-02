echo "Copying files"
mkdir -p /var/www/html 
echo Created folder /var/www/html with return value $?
mkdir -p /var/www/sites-enabled
echo Created folder /var/www/sites-enabled with return value  $?
cp -r /install_dir/* /var/www/html 
echo copying done
chown -R www-data:www-data /var/www
echo changed ownershsip
