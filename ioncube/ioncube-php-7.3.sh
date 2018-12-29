  echo -n "Installing Ioncube Loader (PHP 7)... "
  mkdir /usr/local/ioncube
  wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
  tar xzvf ioncube_loaders_lin_x86-64.tar.gz
  cd ioncube
  cp -p ioncube_loader_lin_7.3.so /usr/local/ioncube
  cp -p ioncube_loader_lin_7.3_ts.so /usr/local/ioncube
  
#sed -i "s/;zend_extension=/zend_extension=/usr/local/ioncube/ioncube_loader_lin_7.3.so" /etc/php.ini
#sed -i "s%;zend_extension_ts=%zend_extension_ts=/usr/local/ioncube/ioncube_loader_lin_7.3_ts.so" /etc/php.ini

  #normalde ustteki komutlar ile calismak lazim ama tam kavrayamadim o yuzden alternatif yol
echo "[ioncube]" >> /etc/php.ini
echo "zend_extension=/usr/local/ioncube/ioncube_loader_lin_7.3.so" >> /etc/php.ini
echo "zend_extension_ts=/usr/local/ioncube/ioncube_loader_lin_7.3_ts.so" >> /etc/php.ini
  service php-fpm restart
  echo -e "[${green}DONE${NC}]\n"
