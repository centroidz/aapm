#!/bin/bash

pkg update && pkg upgrade

pkg install php phpmyadmin mariadb vim -y

mv $PREFIX/share/phpmyadmin/config.inc.php $PREFIX/share/phpmyadmin/config.inc.php.bak

mv ~/aapm/config.inc.php $PREFIX/share/phpmyadmin/

mkdir -p $PREFIX/etc/php

echo 'error_reporting = 0' >> $PREFIX/etc/php/php.ini

mv $PREFIX/etc/apache2/httpd.conf $PREFIX/etc/apache2/httpd.conf.bak

mv ~/aapm/localhost.conf $PREFIX/etc/apache2/conf.d/

mv ~/aapm/phpmyadmin-vhost.conf $PREFIX/etc/apache2/

mv ~/aapm/httpd.conf $PREFIX/etc/apache2/

chmod +x ~/start.sh

mv ~/start.sh $PREFIX/bin/start-admin

rm -rf ~/termuxphp

echo 'installation done'
