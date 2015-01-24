a:97:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"#!/bin/bash
# Installing Drupal and LAMP";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:41;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:41;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"#######################################################################";}i:2;i:44;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:115;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:115;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"# Install packages";}i:2;i:117;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:135;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:135;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:" p apache php-apache php-gd php-pear php-intl php-xcache mariadb \
 mariadb-clients libmariadbclient drupal";}i:2;i:138;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:245;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:245;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"#######################################################################";}i:2;i:248;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:319;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:319;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"# Configuring MariaDB for Drupal
{";}i:2;i:321;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:356;}i:19;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:59:"sudo systemctl restart mysqld

sudo systemctl enable mysqld";}i:2;i:356;}i:20;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:74:"mysql_secure_installation	# Choose Y for default options

mysql -u root -p";}i:2;i:420;}i:21;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:65:"# In MySQL console ,   MariaDB [(none)]>

CREATE DATABASE drupal;";}i:2;i:499;}i:22;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:135:"# NOTE: change 'password' to the mysql root user password

GRANT ALL ON drupal.* TO 'root'@'localhost' IDENTIFIED BY 'password';
	
exit";}i:2;i:569;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:569;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"}";}i:2;i:712;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:713;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:713;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"#######################################################################";}i:2;i:716;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:787;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:787;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"# Configuring php for Drupal
{";}i:2;i:789;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:819;}i:32;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:243:"
n /etc/php/php.ini

# Find the line open_basedir & Add the Drupal install directories

#ABZ
open_basedir = xxx:/usr/share/webapps/drupal:/var/lib/drupal:

#SAL
#open_basedir = xxx:/usr/share/webapps/drupal:/var/lib/drupal:/home/sal/TV:/media:";}i:2;i:819;}i:33;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:348:"

# Make sure these are uncommented ; and add them if they dont exist
extension=curl.so
extension=gd.so
extension=gettext.so
extension=iconv.so
extension=intl.so
extension=mysqli.so
extension=mysql.so
extension=openssl.so
extension=pdo_mysql.so
extension=xmlrpc.so
extension=zip.so
extension=ixed.5.3
extension=uploadprogress.so
extension=xcache.so";}i:2;i:1074;}i:34;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:119:"# configure the following options for upload cap size (all same same)
post_max_size = 1000M
upload_max_filesize = 1000M";}i:2;i:1441;}i:35;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:43:"
# Execute
sudo pecl install uploadprogress";}i:2;i:1565;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1565;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"}	";}i:2;i:1615;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1617;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1617;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"#######################################################################";}i:2;i:1622;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1693;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1693;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"# Configuring Apache for Drupal
{";}i:2;i:1696;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1729;}i:45;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:158:"
n /etc/httpd/conf/httpd.conf


# If your webserver is dedicated to Drupal , then Change

DocumentRoot "/srv/http" >> DocumentRoot "/usr/share/webapps/drupal"";}i:2;i:1729;}i:46;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:64:"Directory "/srv/http"  >>  Directory "/usr/share/webapps/drupal"";}i:2;i:1896;}i:47;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:122:"# Add to the end of  /httpd.conf to run php

LoadModule php5_module modules/libphp5.so
Include conf/extra/php5_module.conf";}i:2;i:1964;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1964;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:345:"############### Change this module #######################
##########################################################
LoadModule mpm_event_module modules/mod_mpm_event.so
############### With this one ############################
LoadModule mpm_prefork_module modules/mod_mpm_prefork.so
##########################################################";}i:2;i:2094;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2439;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2439;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"}";}i:2;i:2442;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2443;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2443;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"#######################################################################";}i:2;i:2447;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2518;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2518;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"# Starting Services";}i:2;i:2520;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2539;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2539;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:119:" sudo systemctl enable mysqld
 sudo systemctl enable httpd
 sudo systemctl restart mysqld
 sudo systemctl restart httpd";}i:2;i:2541;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2660;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2660;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"#######################################################################";}i:2;i:2664;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2735;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2735;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"# Configuring Drupal Options";}i:2;i:2737;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2766;}i:69;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:145:"Database name = "drupal"

Database user = "root"

Database password = "the root user mysql password"

Site name = "whatever"

Email = "whatever"
";}i:2;i:2766;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2766;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"#######################################################################";}i:2;i:2923;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2994;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2994;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"# Resetting the Drupal admin password";}i:2;i:2996;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3033;}i:76;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:24:"
mysql -u root -p drupal";}i:2;i:3033;}i:77;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:84:"# DO NOT CHANGE PARAMETERS , except 'name'
#This will reset the password to "drupal"";}i:2;i:3062;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3062;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"UPDATE users SET name='abz', pass='$S$Drl0vgZ9yuU9uc4JyaTMHxMPriC7q/PsOUOx52fCrVQSTpI/Tu4x' WHERE uid = 1;";}i:2;i:3151;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3257;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3257;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"#######################################################################";}i:2;i:3260;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3331;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3331;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"# Resources";}i:2;i:3334;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3345;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3345;}i:88;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:43:"https://wiki.archlinux.org/index.php/drupal";i:1;N;}i:2;i:3347;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:3390;}i:90;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:43:"https://wiki.archlinux.org/index.php/Apache";i:1;N;}i:2;i:3391;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:3434;}i:92;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:42:"https://wiki.archlinux.org/index.php/MySQL";i:1;N;}i:2;i:3435;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:3477;}i:94;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:40:"https://wiki.archlinux.org/index.php/PHP";i:1;N;}i:2;i:3478;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3518;}i:96;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3518;}}