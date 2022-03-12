## Repositorio de pruebas Git Emmanuel Londoño Gomez :)

Hola bienvenido a este repositorio que cree para probar mis conocimientos en Git

Que veras a aquí ?

### Contenido
[1. Hacer clone de mi repositorio](#1-hacer-clone-de-mi-repositorio)
[2. Estructura creas tablas y base de datos](#2-estructura-crear-tablas-y-base-de-datos)
[3. Hacer SELECT en SQL](#3-hacer-select-en-sql)
[4. Hacer INSERT INTO en SQL](#4-hacer-insert-into-en-sql)

# 1. Hacer clone de mi repositorio
Para poner en marcha este repositorio debes hacer lo siguiente 

[Aquí accedes al repo para clonarlo](https://github.com/champion19/Prueba-Git.git)

# 2. Estructura crear tablas y base de datos

[Aquí](./sql/createtable.sql) Encontrarás la estructura para que ejecutes la base de datos en tu entorno

# 3. Hacer SELECT en SQL
[Aqui](./sql/select.sql) encontraras la informacion para seleccionar la informacion de una tabla seleccionada.

``SELECT * FROM users``


# 4. Hacer INSERT INTO en SQL
[Aqui](./sql/insert-into.sql) encontraras la informacion adecuada para insertar informacion en la tabla que desees.

``INSERT INTO usuarios(pefil_id,nombre,apellido,email,fechacreacion)
VALUES(1,'Emmanuel','Londoño Gomez','emmalondogo@gmail.com',now());``

# 5. Hacer DELETE en SQL
[Aqui](.sql/delete.sql) encontraras el comando adecuado para eliminar cualquier tipo de informacion de una tabla.

``delete from usuarios(pefil_id,nombre,apellido,email,fechacreacion)
VALUES(1,'Emmanuel','Londoño Gomez','emmalondogo@gmail.com',now());``

# 6. Hacer ALTER TABLE en SQL

[Aquí](.sql/alterTable.sql) encontraras el comando adecuado para realizar una modificación en una tabla determinada

``
ALTER TABLE perfiles
ALTER COLUMN detalle nvarchar(255);
``

# 7. Hacer UN INNER JOIN EN SQL
[Aqui](.sql/innerJoin.sql)encontraras el comando adecuado para mirar la informacion de la tabla.

``
from usuarios
inner join Perfil on perfil.ID= usuarios.perfil_id;
``


# 8. HACER UN LEFT JOIN EN SQL
[Aqui](.sql/leftJoin.sql) encontraras el comando adecuado para encontrar la informacion de la tabla de la izquierda y las entradas parecidas de la tabla de la derecha.


``
from usuarios 
left join Perfil on perfil.ID= usuarios.perfil_id
``


# 9. HACER UN RIGHT JOIN EN SQL
[Aqui](.sql/right-join.sql)encontraras el comando adecuado para encontrar la informacion de la tabla de la derecha y las entradas parecidas de la tabla de la izquierda.

``
from usuarios
right join Perfil on perfil.ID= usuarios.perfil_id;
``

# 12. USAR EL COMANDO IN EN SQL
[Aqui].(sql/in.sql)encontraras la forma adecuada de usar el comando para especificar multiples valores en una condicion where.

``
select nombre from usuarios where nombre in ('travis','santiago');
``
