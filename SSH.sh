ssh

Secure Shell
Protocolo que permite acceder a maquinas remotas atraves de la red.
En el archivo /etc/hosts.allow y hosts.deny se puede establecer las restricciones para las conexiones ssh

ssh://servidor@localhost/Applications/MAMP/htdocs/rasa/git/graficas/
scp origen servidor@ip:/ruta


>>>enviar archivos (origen , destino)
scp git@172.19.0.111:/var/git/mysql.tar /respaldos/
scp /var/git/git.tar dilbert@172.19.0.23:/respaldos/