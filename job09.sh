#!/bin/bash
cd upload/
while IFS=":" read var1 var2
do
varname="$var1"
varpassword="$var2"
openssl passwd -1 -noverify $varpassword| htpasswd -i -p /etc/proftpd/ftp.passwd $varname
mkdir /ftp/$varname
mkdir /ftp/$varname/document
sudo chown -R proftpd:nogroup /ftp/$varname/
sudo chmod 555 /ftp/$varname
sudo chmod 777 /ftp/$varname/document
done < <(sed 's/\r//' Shell_Userlist.csv)

