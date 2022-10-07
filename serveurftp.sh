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


