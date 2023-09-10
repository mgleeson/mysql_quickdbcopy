#!/bin/bash

. settings.cfg

export MYSQL_PWD="${src_dbpw}"

mysqldump -u ${src_dbuser} ${src_db} -h ${src_dbhost} | mysql -u ${dest_dbuser} -p${dest_dbpw} -h ${dest_dbhost} ${dest_db} 


