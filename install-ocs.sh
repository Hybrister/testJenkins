#!/bin/bash

#Update Upgrade
apt-get update && apt-get upgrade << EOF
Y
EOF
#

#Install Apache
apt-get install apache2 apache2-doc << EOF
Y
EOF

#Install Make
apt-get install make << EOF
Y
EOF

#Install Php
apt-get install php libapache2-mod-php php-mysql php-gd php7.2-mbstring php-soap php-xml php-curl << EOF
Y
EOF

#Install Mysql
apt-get install mysql-server << EOF
Y
EOF


#Install PERL
apt-get install libxml-simple-perl<< EOF
Y
EOF

apt-get install libio-compress-perl << EOF
Y
EOF

apt-get install libc-dev << EOF
Y
EOF

apt-get install libdbi-perl << EOF
Y
EOF

apt-get install libdbd-mysql-perl << EOF
Y
EOF

apt-get install libapache-dbi-perl << EOF
Y
EOF

apt-get install libnet-ip-perl << EOF
Y
EOF

apt-get install libsoap-lite-perl << EOF
Y
EOF

#Install Perl modules
perl -MCPAN -e 'install Mojolicious'
perl -MCPAN -e 'install Switch'
perl -MCPAN -e 'install Plack::Handler' << EOF
enter
EOF

#Install Unzip
apt-get install unzip << EOF
Y
EOF

#Get the last OCSNG-UNIX_SERVER.tar.gz
wget https://github.com/OCSInventory-NG/OCSInventory-ocsreports/releases/download/2.4.1/OCSNG_UNIX_SERVER_2.4.1.tar.gz

#Extract
tar -xzvf OCSNG_UNIX_SERVER_2.4.1.tar.gz

#Go into
cd OCSNG_UNIX_SERVER_2.4.1

#Install OCS
./setup.sh << EOF
y
localhost
3306
/usr/sbin/apache2ctl
/etc/apache2/apache2.conf
www-data
www-data
/etc/apache2/conf-available
/usr/bin/perl
y
/var/log/ocsinventory-server
/etc/ocsinventory-server/plugins
/etc/ocsinventory-server/perl
y
y
y
y
/usr/local/share/perl/5.26.1
y
y
y
/usr/share/ocsinventory-reports
/var/lib/ocsinventory-reports
EOF

#Copy files and create symbolics links
sudo cp /etc/apache2/conf-available/z-ocsinventory-server.conf /etc/apache2/sites-enabled
sudo cp /etc/apache2/conf-available/ocsinventory-reports.conf /etc/apache2/sites-enabled

sudo ln -s /etc/apache2/sites-enabled/z-ocsinventory-server.conf /etc/apache2/sites-enabled/ocsinventory.conf
sudo ln -s /etc/apache2/sites-enabled/ocsinventory-reports.conf /etc/apache2/sites-enabled/ocsreports

#Import database
echo "create database ocs_test_jenkins" | mysql
mysql -D ocs_test_jenkins < bd.sql

#Config root user to use the mysql_native_password plugin
mysql << EOF
USE mysql;
UPDATE user SET plugin='mysql_native_password' WHERE User='root';
FLUSH PRIVILEGES;
exit;
EOF

#Restart mysql
service mysql restart

#Restart apache
service apache2 restart

#Get chromedriver
wget https://chromedriver.storage.googleapis.com/2.40/chromedriver_linux64.zip

#Extract into /usr/bin/
unzip chromedriver_linux64.zip -d /usr/bin/
