SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS cbase;
/*
* Gestion de Usuarios
* Para conectarse desde la terminal: mysql -u barcvila -h localhost -p
*/
CREATE USER 'barcvilla'@'localhost' IDENTIFIED BY 'rpgile400';

/* asignando privilegios a un usuario */
use cbase;
GRANT ALL PRIVILEGES ON cbase TO 'barcvilla'@'localhost';
FLUSH PRIVILEGES;
/* Mostrar los privilegios de un determinado user*/
SHOW GRANTS FOR 'barcvilla'@'localhost';

/* revocar todos los permisos a un usuario*/
REVOKE ALL, GRANT OPTION FROM 'barcvilla'@'localhost';

/* eliminar un usuario*/
DROP USER 'barcvilla'@'localhost';