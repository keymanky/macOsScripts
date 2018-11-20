
>>> CONECT USER
	uptime (los usarios conectados y el tiempo k lleva prendido el cpu)
	w (los usuarios conectados y lo k hacen)
	pkill -9 -t ###DEL PROCESO EJEUCTANDO W pts/0 (desconecta al usuario ssh)

>>> LOGS FILES
	find /var/log -type f -delete
	cat /dev/null > ~/.bash_history	
	history -c		
	cat /var/log/auth.* | grep Accepted

>>> SERVICES
	top
	service nombre status|stop|start
	pstree 
	kill #	

>>> YOU GET A NEW MAIL
	/var/spool/mail