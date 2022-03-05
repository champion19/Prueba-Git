INSERT INTO perfiles(detalle)
VALUES('Usuario de prubas');

SELECT perfil_id,detalle FROM perfiles;

INSERT INTO usuarios(pefil_id,nombre,apellido,email,fechacreacion)
VALUES(1,'Emmanuel','Londoño Gomez','emmalondogo@gmail.com',now());