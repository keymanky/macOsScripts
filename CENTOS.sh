
Configuracion de la maquina
	hostnamectl		#Muestra info de la maquina
	hostnamectl set-hostname JorgeSalgadoMendoza
	timedatectl | grep "Local time"

Directorios de Instalacion:	
	/usr/
	/etc/				#Almacena las variable de entorno
	/etc/environment 	#Lugar donde se almacenan las variables de environment
	env					#Despliega las variables de environment

Hadware Information
	cat/proc		#Muestra los procesadores
	free -m -g		#Muestra la memoria libre disponible en gigas


Instalacion de Paquetes

	yum 			#A diferencia de apt-get gestor de debian nosotros podemos generar nuestros propios paquetes
	yum update -y 	#Actualizar, -y yes all

	whereis java	#Muestra info de donde esta instalado java y su version
	echo $JAVA_HOME #Imprime el valor de la varible JAVA_HOME de env


Usuarios
	sudo comando	#Ejecuta el comando como super usuario
	sudo su -		#Conectarse como super usuario porque vagran es super usuario

Servicios y Performance
	systemclt start/restart/stop/status NOMBRE_DEL_SERVICIO

