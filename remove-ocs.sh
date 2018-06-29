#!/bin/bash

#Remove Apache
apt-get autoremove apache2 apache2-doc perl << EOF
Y
EOF

#Remove Make
apt-get autoremove make << EOF
Y
EOF

#Remove Php
apt-get autoremove php libapache2-mod-php php-mysql php-gd php7.2-mbstring php-soap php-xml php-curl<< EOF
Y
EOF

#Remove database
mysql << EOF
DROP DATABASE ocs_test_jenkins;
EOF

#Remove Mysql
apt-get autoremove mysql-server << EOF
Y
EOF

#Remove PERL 
apt-get autoremove libxml-simple-perl << EOF
Y
EOF

apt-get autoremove libio-compress-perl<< EOF
Y
EOF

apt-get autoremove libc-dev << EOF
Y
EOF

apt-get autoremove libdbi-perl << EOF
Y
EOF

apt-get autoremove libdbd-mysql-perl << EOF
Y
EOF

apt-get autoremove libapache-dbi-perl << EOF
Y
EOF

apt-get autoremove libnet-ip-perl << EOF
Y
EOF

apt-get autoremove libsoap-lite-perl << EOF
Y
EOF

#Remove Unzip
apt-get autoremove unzip << EOF
Y
EOF

#Remove OCS and package
rm -rf OCSNG_UNIX_SERVER_2.4.1
rm OCSNG_UNIX_SERVER_2.4.1.tar.gz

rm /etc/apache2/sites-enabled/z-ocsinventory-server.conf
rm /etc/apache2/sites-enabled/ocsinventory-reports.conf
rm /etc/apache2/sites-enabled/ocsreports.conf
rm /etc/apache2/sites-enabled/ocsinventory.conf
rm /etc/apache2/sites-enabled/ocsreports

rm /etc/apache2/conf-available/ocsinventory-reports.conf
rm /etc/apache2/conf-available/z-ocsinventory-server.conf
rm /etc/apache2/conf-available/zz-ocsinventory-restapi.conf 

rm -rf /usr/share/ocsinventory-reports/
rm -rf /usr/local/share/perl/5.26.1/Apache/Ocsinventory/
rm -rf /var/lib/ocsinventory-reports/
rm -rf /etc/ocsinventory-server/

rm -rf *
