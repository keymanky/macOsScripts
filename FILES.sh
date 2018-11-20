>>> FIND FILE
	find . -type f -name "name"

>>> COUNT LINES OF CONSOLE
	ls -1 | wc -

>>> NEW FILE
	touch

>>> SORT FILE IN /home BY SIZE
	du --max-depth=1 /home/ | sort -n -r

>>> COMPRESS FILES
	tar -cvf archivo.tar /dir/a/comprimir/
	zip -r name.zip folder

>>> COMPRESS DIRECTORIES
	tar -zcvf nombre-archivo.tar.gz nombre-directorio

>>> DESCOMPRESS .tar.gz
	tar -xvzf miarcho.tar.gz
	unzip file.zip -d /directory

>>> SHOW ENDING LINES IN FILES
	tail, es util para logs

>>> CHANGE FILE WITH COMMAND LINE
	SED	
		Modifica el contenido de las lineas de un archivo, en base a una serie de comandos
		Reciben stdin y para cada linea a manipular aplica una serie de comandos que cumplan con una condicion.	

>>> PERMISOS

	Lectura		(r)
	Escritura	(w)
	Ejecucion 	(x)

	rwx se puede agregar con operadores - y + precediento el verbo por ejemplo +x -rwx

	para cada archivo los permisos se segmentan asi (chmod u+x)
	rwx------ Usuario (u)
	---rwx--- Grupo   (g) 	
	------r-x Otros	  (o)

	la representacion octal se muestra a continuacion, por lo tanto el conjunto de los 3 segmentos contienen 3 numeros por ejemplo
	chmod 700, chmod 600, etc
	rwx		7	
	rw-		6
	r-x		5
	r--		4
	-wx		3
	-w-		2
	--x  	1

	chmod 700 -R carpeta
	chmod -R 667 carpeta