select perfil.ID,concat(nombre,' ',apellido) as nombrecompleto,post.cuerpo,post.fechacreacion,post.titulo,
postestado.detaller,comentario.comentario,comentario.fechacreacion
from usuarios 
inner join Perfil on perfil.ID= usuarios.perfil_id
inner join post on usuarios.ID = post.usuarios_id
inner join postestado on postestado.id = post.postestado_id
inner join comentario on usuarios.ID=comentario.usuarios_id
inner join comentarioestado on comentarioestado.id= comentario.comentarioestado_id;