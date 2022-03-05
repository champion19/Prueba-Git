/*Creamos nuestra base de datos*/
create database university;

/*Creamos la tabla que almacena los perfiles*/
create table perfil(
ID int not null auto_increment comment'identificador de identidad',
detalle varchar(45) comment'identificador de detalle',
primary key(ID)
);

/*Creamos la tabla que almacena los usuarios*/
create table usuarios(
ID INT not null auto_increment comment'identificador de identidad',
perfil_id int comment'identificador de perfil',
nombre  varchar(45) comment'identificador de nombre',
apellido varchar(45) comment'identificador de apellido',
email varchar(150)comment'identificador de email',
fechacreacion Datetime comment'identificador de fecha de creacion',
primary key(ID),
constraint perfil_fk foreign key(perfil_id) references perfil(ID)
);

/*Creamos tabla de post o contenidos*/
create table post(
id int not null auto_increment comment'identificador de post',
usuarios_id int comment'identificador de usuario',
titulo varchar(200) comment'identificador  de titulo',
cuerpo text comment'identificador de contenido',
postestado_id int comment'identificador de post',
fechacreacion datetime comment'identificador de fecha',
primary key(ID),
constraint usuarios_fk foreign key(usuarios_id) references usuarios(ID),
constraint postestado_fk foreign key(postestado_id)references postestado(ID)
);

create table comentario(
id int not null auto_increment comment'identificador de comentario',
usuarios_id int comment'identificador de usuario',
post_id int comment'identificador de post',
comentario text comment'identificador de comentario',
comentarioestado_id int comment'identificador de estado de comentario',
fechacreacion datetime comment'identificador de fecha ',
primary key(ID)
);

alter table comentario 
add constraint usuario_fk foreign key(usuarios_id) references usuarios(ID);

alter table comentario 
add constraint comment_fk foreign key(comentarioestado_id) references comentarioestado(ID);

alter table comentario
add constraint publicacion_fk foreign key(post_id) references post(ID);

create table postestado(
id int not null auto_increment comment'identificador de comentario del post',
detaller varchar(45) comment'identificador de detalle',
primary key(ID)
);


create table comentarioestado(
id int not null auto_increment comment'identificador de comentario del post',
detalle varchar(45) comment'identificador de detalle',
primary key(ID)
);