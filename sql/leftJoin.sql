select perfil.ID,concat(nombre,' ',apellido) as nombrecompleto
from usuarios 
left join perfil on perfil_id =usuarios.perfil_id;