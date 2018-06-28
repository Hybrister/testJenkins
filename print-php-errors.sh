#!/bin/bash

#Remove file if exists
file="report.html"

if [ -f $file ] ; then
	rm $file
fi

#Errors file
error="php-error.log"

#We just take PHP Warning and PHP Error
sudo tail /var/log/apache2/error.log | sed "s/\[[^]]*\]//g" |grep -e "PHP Warning" -e "PHP error" >> $error

touch $file

echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
 <head>
  <meta content="text/html; charset=utf-8" />
 </head>
 <body>
  <h1>PHP Warning/Error</h1>
   <p>' >> $file

cat $error >> $file

echo '
   </p>
  </h1>
 </body>
</html>' >> $file

#Remove file if exists
if [ -f $error ] ; then
	rm $error
fi

#Remove error log to just have new errors
sudo rm /var/log/apache2/error.log
#Restart apache, this will recreate error.log
sudo /etc/init.d/apache2 restart
