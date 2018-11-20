#! CRON


-->DESCRIPCION

Para automatizar tareas
Con cron se puede configurar las tareas de 2 formas, editando el archivo /etc/crontab y escribiendo la tareas como una nueva linea o agregar el script dentro de la carpeta respectiva cron.daily, cron.weekly o cron.monthly (de esta ultima forma se debe asignar permisos de ejecucion)
Cada usuario puede tener su propia lista de tareas automaticas, el super usuario es el unico que puede y editar la lista de todos los usuarios.

-->SINTAXIS

    UNIX

    */5 cada 5 minutos

    * * * * * user command

        El primer campo son los minutos (0-59)
        El segundo las horas (0-23)
        El tercero el día del mes (1-31)
        El cuarto es el mes (1-12)
        El quinto es el día de la semana (0-7, siendo el Domingo tanto el 0 como el 7)
        El sexto es el usuario al que pertenece la tarea
        El último es el comando a ejecutar

    MAC OS

    En Mac Osx la sintaxis es * * * * * command, para darlo de alta en la terminal escriba crontab -e, 
    inserte el cron con (i modo insert) esc (salir de modo i) y May+ZZ para guardar y salir


    ANACRON (se ejecutar al arrancar el sistema)

	   A diferencia del anterior, tareas k no se ejecutan en el instante exacto, esto es util para computadoras k no estan encendidas todo el tiempo. No puede ejecutar con frecuencia menores a dias.
       Cada cuantos días se quiere realizar la tarea o periodo
       El segundo puedes determinar el número de minutos que transcurrirán desde que ejecutas anacron hasta que se lanza la tarea programada (retraso)
       El tercero nombre de tarea junto con la frecuencia
       El cuarto el comando

-->EJEMPLO

    *  *    * * *   root    /etc/cron.d/test.sh

    El siguiente es el contendio del archivo test.sh
                                
    #!/bin/bash 
    # This is a comment 
    current_time=$(date "+%Y.%m.%d-%H.%M.%S")
    FILE_LIST="`ls -d */ | sed 's/\// /g'`" 
    for file in ${FILE_LIST} 
    do 
            tar -zcvf "/respaldos/"${file}_${current_time}.tar.gz ${file}
    done


-->REFERENCIAS
    http://blog.desdelinux.net/cron-crontab-explicados/
    https://ole.michelsen.dk/blog/schedule-jobs-with-crontab-on-mac-osx.html




