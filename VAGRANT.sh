VAGRANT, HERRAMIENTA PARA AUTOMATIZAR Y GESTIONAR LAS MAQUINAS VIRTUALES

	Para poder utilizar esta herramienta debe de estar instalado virtual box, y en windows 10 no debe estar seleccionada la opcion de Virtualizacion en las caracteristicas de Windows.

Descargar maquina virtual con ambiente de desarrollo IPN

	vagrant plugin install vagrant-vbguest
	Copiar el contenido del vagrant file:
		# -*- mode: ruby -*-
		# vi: set ft=ruby :
		Vagrant.configure("2") do |config|
		  config.vm.box = "nogala/gcloud" 
		  config.vm.box_version = "1"
		  config.vm.network "forwarded_port", guest: 80, host: 8081, auto_correct: true
		  config.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true
		  config.vm.provider "virtualbox" do |vb|
		     vb.name = "P429CICJL2-Des-premise"
		     vb.memory = "2048"
		     vb.cpus = "1"
		   end
		  config.vm.hostname = "NOMBRE_MAQUINA_VIRTUAL"
		#user: cic ; password: cic
		#user vagrant ; password: vagrant
		#user root ; password: vagrant
	vagrant up
	vagrant ssh

Configuracion del Archivo VagrantFile

	Dentro de la carpeta /vagrant/ Se muestran los archivos compartidos de RED
	config.vm.network "forwarded_port", guest: 80, host: 8080 /*  Enrutamiento  */

Instalacion en CentOS

	wget https://download.virtualbox.org/virtualbox/5.2.18/VirtualBox-5.2-5.2.18_124319_el7-1.x86_64.rpm
	wget https://download.virtualbox.org/virtualbox/5.2.18/Oracle_VM_VirtualBox_Extension_Pack-5.2.18.vbox-extpack
	sudo yum install -y VirtualBox-5.2-5.2.18_124319_el7-1.x86_64.rpm
	vagrant plugin install vagrant-vbguest

Comandos

	vagrant up
	vagrant ssh
	vagrant status (Tienes que estar dentro del folder de la maquina virtual)
	vagrant global-status
	vagrant halt ID
	vagrant list-box
/Volumes/ESD-ISO/bigdata/_Apuntes/1_VAGRANT.txt
	vagrant package (Debe estar detenida y en el directorio de una maquina v)
	vagrant box add NOMBRE ARCHIVO.BOX 
	vagrant init    (Dentro de un directorio nuevo)
	config.vm.box = "NOMBRE" (Cambiar donde dice NOMBRE por el nombre que se especifico en el comando box add dentro del archivo Vagrantfile que se genero al init)


	Referencia:
	https://dev.to/psnebc/vagrant-package-and-vagrant-box-add-8of

