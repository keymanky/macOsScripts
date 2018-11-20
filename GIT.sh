GIT:

	Introduccion:
		Software de control de versiones.
		Toda una foto de todo el sistema y lo copia en la maquina local, en caso de un desastre en el servidor los clientes tienen una replica.
		A diferencia de otros VCS, git en cada version mantiene una copia (en caso de cambio) o una referencia al ultimo archivo (en caso de no haber cambio) similar a esto:

		version 1		version 2		version x
		A 				A1				A1 (no cambio referencia a version 2)
		B				B1				B2


		Los 3 estados:
			-committed | git directory   		  (confirmado, almacenado con exito)
			-staged    | staging area <file>	  (Preparado, listo para la siguiente confirmacion)
			-modified  | working directory		  (Modificado, que se detecto un cambio)			


	Config
		-Se guarda el nombre del usuario, etc

		git config --list
		git config --global usern.name "Jorge"


	Help
		git help <comando>
		git <comando> --help
		man git-<comando>


	Funcionamiento
		Untracket files: Cuando son creados archivos nuevos, se necesita incluirlos explicitamente con el comando git add

	Comandos
		git init (crea un directorio git para iniciar el seguimiento)
		git status (muestra los files y su estado)


 ************************************************************************************************************



git clone ssh://servidor@XXX/Applications/MAMP/htdocs/rasa/git/sendpdf
		  ssh://servidor@localhost/Applications/MAMP/htdocs/rasa/git/graficas/

		  ssh://administrator@XXX/Applications/MAMP/htdocs/detexis/git/mail
		  ssh://administrator@localhost/Applications/MAMP/htdocs/detexis/git/mail/


git add -u 		(Agregar en el area de trabajo los archivo eliminados manualmente sin usar git rm)




git clone ssh://administrator@XXX/Applications/MAMP/htdocs/jorge/giss
git clone ssh://administrator@XXX/Applications/MAMP/htdocs/jorge/soporte_loma
git clone ssh://administrator@XXX/Applications/MAMP/htdocs/jorge/tracker

### CON BASE DE DATOS detexis, detexis_soporte

git clone ssh://administrator@XXX/Applications/MAMP/htdocs/detexis/appointments
git clone ssh://administrator@XXX/Applications/MAMP/htdocs/detexis/encuestas
git clone ssh://administrator@XXX/Applications/MAMP/htdocs/detexis/mail
git clone ssh://administrator@XXX/Applications/MAMP/htdocs/detexis/msn
git clone ssh://administrator@XXX/Applications/MAMP/htdocs/detexis/soporte

### CON BASE DE DATOS wsrasainfonavit, sendpdf, rasa , 

git clone ssh://servidor@XXX/Applications/MAMP/htdocs/rasa/git/graficas
git clone ssh://servidor@XXX/Applications/MAMP/htdocs/rasa/git/sendpdf
git clone ssh://servidor@XXX/Applications/MAMP/htdocs/rasa/git/sendresoluciones
git clone ssh://servidor@XXX/Applications/MAMP/htdocs/rasa/git/ws
git clone ssh://servidor@XXX/Applications/MAMP/htdocs/rasa/git/ws_cliente

