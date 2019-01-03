  echo -n "Installing Ioncube Loader (PHP 7)... "
  mkdir /usr/local/ioncube
  cd /tmp
  wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
  tar -xzvf ioncube_loaders_lin_x86-64.tar.gz
  # ioncube klasorunu /tmp den usr/local klasorune tasiyoruz 
  mv -f /tmp/ioncube -t  /usr/local
 
  #Php.ini dosyamıza asagidaki kodlari ekliyoruz
echo " "
echo "[ioncube]" >> /etc/php.ini"
echo "zend_extension=/usr/local/ioncube/ioncube_loader_lin_7.3.so" >> /etc/php.ini"
echo "zend_extension_ts=/usr/local/ioncube/ioncube_loader_lin_7.3_ts.so" >> /etc/php.ini"
  service php-fpm restart
  echo -e "[${green}DONE${NC}]\n"
