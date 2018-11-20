
>>> CONECT USER
	uptime (los usarios conectados y el tiempo k lleva prendido el cpu)
	w (los usuarios conectados y lo k hacen)
	pkill -9 -t ###DEL PROCESO EJEUCTANDO W pts/0 (desconecta al usuario ssh)


>>> USERS
	UID 0 el super usuario
	UID 1-100 los usuarios especiales linux cmo bin, daemon, mail, sync.
	UID >500 los usuarios normales del sistema

	/etc/passwd
	Archivo donde estan definidas las cuentas de usuario, su identificador, u GID, UID, directorio de trabajo y shell por defecto.

	/etc/group
	Archivo que guarda la relacion de los usuarios con su grupo

	useradd | adduser
		-d directorio de trabajo
		-e fecha de expiracion de la cuenta
		-s shell del sistema

	usermod (modifica la informacion de una cuenta)

	userdel (elimina una cuenta de usuario)

	passwd (asigna o cambia la contraseña de una cuenta)

	.bash_logout --> este archivo se ejecuta cuando cierra la seccion un usuario

	.bash_profile --> cuando el usuario inicia seccion

	.bashrc -->alias del la shell del usuario

	para agregar un usuario al con privilegios de root asi:
		1) /etc/passwd campiar su UID y GID por 0 como root en su linea
		2) /etc/group agregarlo al grupo de usuarios root añadiendo el nombre del usuario a lado del de root root:x:0:usuario
		3) /etc/sudoers añadirlo con privilegios todos user ALL=(ALL) ALL

>>> RECOVERY PASSWORD ROOT
	1)Al arrancar precionar la tecla e cuando aparezca el grup
	2)Ir a la linea que dice /boot/rm ... or quiet
	3)Poner al final lo siguiente init=/bin/sh
	4)Precionar las teclas Ctrl + X
	5)Escribir mount -o remount rw /
	6)Escribi passwd root
	7)Reiniciarla con botonazo
