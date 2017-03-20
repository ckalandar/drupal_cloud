echo  HOST $1
echo PORT $2 
sed -i "s/\"drupal\"/\"$1\"/" /etc/varnish/default.vcl
sed -i "s/\"80\"/\"$2\"/" /etc/varnish/default.vcl
grep $1 /etc/varnish/default.vcl
