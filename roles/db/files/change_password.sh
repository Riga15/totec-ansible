#!/bin/bash

mysql --defaults-file=/root/.tmp.my.cnf -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'Root123$'; "
umask 0077
cat > /root/.my.cnf <<EOF
[client]
user=root
password=$new_pass
EOF
