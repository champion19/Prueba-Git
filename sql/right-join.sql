select perfil.ID,concat(nombre,' ',apellido) as nombrecompleto,post.cuerpo,post.fechacreacion,post.titulo,
postestado.detaller,comentario.comentario,comentario.fechacreacion
from usuarios 
right join Perfil on perfil.ID= usuarios.perfil_id
right join post on usuarios.ID = post.usuarios_id
right join postestado on postestado.id = post.postestado_id
right join comentario on usuarios.ID=comentario.usuarios_id
right join comentarioestado on comentarioestado.id= comentario.comentarioestado_id;