#!/bin/bash
timedatectl  set-timezone 'Asia/Seoul'
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY* 
yum -y install epel-release vsftpd httpd mariadb php php-common php-mysql php-gd php-xml php-mbstring  php-mcrypt phpMyAdmin php-pear
systemctl enable httpd && systemctl enable httpd 
perl -pi -e 's/SELINUX=disabled/SELINUX=enforcing/g' /etc/sysconfig/selinux 
