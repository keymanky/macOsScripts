#!/bin/sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin

#----------------------------------------------------
# a simple mysql database backup script.
# version 2, updated March 26, 2011.
# copyright 2011 alvin alexander, http://devdaily.com
#----------------------------------------------------
# This work is licensed under a Creative Commons
# Attribution-ShareAlike 3.0 Unported License;
# see http://creativecommons.org/licenses/by-sa/3.0/
# for more information.
#----------------------------------------------------

# (1) set up all the mysqldump variables
FILE=database.sql.`date +"%Y%m%d"`
DBSERVER=myserver.com
DATABASE=mydatabase
USER=myuser
PASS=mypass

# (2) in case you run this more than once a day, remove the previous version of the file
unalias rm     2> /dev/null
rm ${FILE}     2> /dev/null
rm ${FILE}.gz  2> /dev/null

# (3) do the mysql database backup (dump)

# use this command for a database server on a separate host:
mysqldump --opt --protocol=TCP --user=${USER} --password=${PASS} --host=${DBSERVER} ${DATABASE} > ${FILE}

# use this command for a database server on localhost. add other options if need be.
#mysqldump --opt --user=${USER} --password=${PASS} ${DATABASE} > ${FILE}

# (4) gzip the mysql database dump file
gzip $FILE

# (5) show the user the result
echo "${FILE}.gz was created:"
ls -l ${FILE}.gz





>>>>  Conectarse en consola
mysql -u root -h localhost -password -p 


>>>>  Realizar un respaldo desde dentro de la consola de mysql
\! mysqldump -u root -p sendpdf > /Applications/MAMP/htdocs/rasa/sendpdf_2018_05_23.sql

>>>>  Restaurar un respaldo desde dentro de la consola de mysql
\! mysql -u username -p database_name < file.sql


>>>>  Añadir mysql a la variable $PATH del usuario .profile
sudo ln -s /Applications/MAMP/Library/bin/mysql /usr/local/bin/mysql
sudo ln -s /Applications/MAMP/Library/bin/mysqlcheck /usr/local/bin/mysqlcheck
sudo ln -s /Applications/MAMP/Library/bin/mysqldump /usr/local/bin/mysqldump

echo $PATH

mysql
mysql -h localhost -u root -p
Zamba1
mysqldump --user=root --password="Zamba1" caketest > /var/git/caketest.sql



