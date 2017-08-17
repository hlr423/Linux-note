#!/bin/bash
#description : 编译安装LAMP
#version 0.1
#author gm
#date 20161012
#

#mariadb:
echo "wget mariadb Package."
wget 10.1.0.1:/pub/Sources/7.x86_64/mariadb/mariadb-5.5.46-linux-x86_64.tar.gz &> /dev/null && echo "wget mariadb Package secuessful."

tar -xf mariadb-5.5.46-linux-x86_64.tar.gz -C /usr/local/
cd /usr/local
ln -sv mariadb-5.5.46-linux-x86_64 mysql

echo "add mysql group and mysql user."
groupadd -r mysql &> /dev/null
useradd -r -g mysql mysql &> /dev/null

echo "change file user:group."
cd mysql
chown mysql:root ./*
mkdir /mydata/data -p
chown mysql:mysql /mydata/data

echo "first bulid mysqldb."
scripts/mysql_install_db --user=mysql --datadir=/mydata/data && echo -e "\033[33mmysql db is secuessful.\033[0m"

echo "change PATH."
cat > /etc/profile.d/mysql.sh << end
export PATH=/usr/local/mysql/bin:$PATH
end

source /etc/profile.d/mysql.sh

echo "Add configure file."
mv /etc/my.cnf{,.bak}
cp support-files/my-small.cnf /etc/my.cnf
sed -i '/\[mysqld\]/a \datadir = /mydata/data\nskip_name_resolve = ON\ninnodb_file_per_table = ON' /etc/my.cnf

echo "Add server file."
cp support-files/mysql.server /etc/rc.d/init.d/mysqld
chmod +x /etc/rc.d/init.d/mysqld

chkconfig --add mysqld
service mysqld start &> /dev/null && echo -e "\033[32mmariadb server is start.\033[0m"

#httpd:
echo "wget httpd Package."
wget 10.1.0.1:/pub/Sources/sources/httpd/httpd-2.4.10.tar.bz2 &> /dev/null && echo "wget httpd Package secuessful."
#yum groupinstall "Development Tools" "Server Platform Development" -y -q
yum install pcre-devel openssl-devel libevent-devel  apr-devel apr-util-devel -y -q

tar -xf httpd-2.4.10.tar.bz2
cd httpd-2.4.10/

echo "configure httpd.............."
./configure --prefix=/usr/local/apache2 --sysconfdir=/etc/httpd --enable-so --enable-ssl --enable-cgi --enable-rewrite --enable-modules=most --enable-mpms-shared=all --with-mpm=prefork --with-pcre --with-zlib --with-apr=/usr --with-apr-util=/usr &> /dev/null
make -j 2  &> /dev/null
make install &> /dev/null

echo "change PATH."
cat > /etc/profile.d/httpd.sh << end
export PATH=/usr/local/apache2/bin:$PATH
end

source /etc/profile.d/mysql.sh

echo "change /etc/httpd/httpd.conf file."
echo "ServerName www.gm.com:80" >> /etc/httpd/httpd.conf
sed -i 's@^[[:space:]]*DirectoryIndex.*@& index.php@' /etc/httpd/httpd.conf
sed -i '/^[[:space:]]*AddType/a \AddType application/x-httpd-php .php' /etc/httpd/httpd.conf

apachectl start && echo -e "\033[33mhttpd is start.\033[0m"

#安装php5：
echo "wget php Package."
wget 10.1.0.1:/pub/Sources/sources/php/php-5.4.40.tar.bz2 &> /dev/null && echo "wget php Package secuessful."
yum install gd-devel freetype-devel libmcrypt-devel libxml2-devel -y -q

tar -xf php-5.4.40.tar.bz2
cd php-5.4.40/

echo "configure php................."
./configure --prefix=/usr/local/php --with-mysql  --with-openssl --with-mysqli=/usr/local/mysql/bin/mysql_config --enable-mbstring --enable-xml --enable-sockets --with-freetype-dir --with-gd --with-libxml-dir=/usr --with-zlib --with-jpeg-dir --with-png-dir --with-mcrypt --with-apxs2=/usr/local/apache2/bin/apxs --with-config-file-path=/etc/php.ini --with-config-file-scan-dir=/etc/php.d/ &> /dev/null
make -j 2 &> /dev/null
make install &> /dev/null

#cd /usr/local/php
cp php.ini-production /etc/php.ini
mkdir /etc/php.d/
apachectl restart && echo -e "\033[33mhttpd+php is start.\033[0m"
