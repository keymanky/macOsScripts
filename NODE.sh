
	SAILS

		v0.11
		1) sails new NOMBRE_PROYECTO
		2) sails generate model NOMBRE_MODELO atributo:tipo , ....
		3) sails generate controller NOMBRE_MODELO accion1 accion2 ...
		4) edit the file config/connections.js donde se establece datos de coneccion a la base de datos y guardar el nombre de esta
		5) editar el archivo /config/models.js ( expecifica que conexion usuara y si borrara los datos, ademas de anotar el nombre anterior paso 4)
		6) edit the file config/routes.js donde se especifica la ruta y el controlador que actuara en esa ruta
		7) para cada modelo especificar que conexion usara
		8) npm install nodemon app escuche los cambios y npm install de acuerdo con el adaptador de base de datos (npm install sails-mongo --save)

		9) EN algunas ocaciones sails no genera bien el archivo modelo, hay que cambiarlo String


	NODE PRODUCCION
		PM2 https://github.com/Unitech/PM2/blob/master/ADVANCED_README.md
		pm2 list
		pm2 logs
		pm2 start server.js --watch --name "sandbox3" -- -e dev
		pm2 restart sandbox360
		pm2 info sandbox3
		pm2 delete all 
		pm2 startup debian
		pm2 save