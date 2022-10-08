#!/bin/bash
#Installer un serveur ftp
sudo apt-get install proftpd
sudo apt-get update
sudo apt-get upgrade

#Configurer Proftpd(décommenter ou modifier les directives de configuration)
sudo nano /etc/proftpd/proftpd.conf
#Activation de la nouvelle configuration
sudo /etc/init.d/proftpd reload
#Au besoin,possibilité de:
#Redémarrer le serveur FTP:sudo /etc/init.d/proftpd restart
#Stopper le serveur FTP:sudo /etc/init.d/proftpd stop
#Lancer le serveur FTP:sudo /etc/init.d/proftpd start

#Se connecter à son serveur FTP:
#Télécharger et installer filezilla
wget https:filezilla-project.org/
#Installer filezilla
sudo apt-get install filezilla
#Ouvrir filezilla
filezilla

#Transformer votre serveur FTP en FTPS pour sécuriser les échanges entre 
#votre machine et votre serveur
#Ouvrir le fichier /etc/proftpd/tls.conf et décommentez les lignes indiquées
nano /etc/proftpd/tls.conf
#Création de la clé et du certificat
openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem
#Modification du fichier modules.conf(décommenter et modifier les lignes indiquées)
nano /etc/proftpd/modules.conf
#Restart proftpd
sudo service proftpd restart
#Pour voir les erreurs:sudo proftpd -td10

