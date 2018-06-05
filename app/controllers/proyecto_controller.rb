class ProyectoController < ApplicationController


  def ver
currenU=User.find_by(email:session[:usuario])
@nombrepag=currenU.nombre
  usuario=User.find_by(email:session[:usuario])
  puts @usuario.to_json
  @Cursos=Curso.all
  @proyectos=Proyecto.select("proyectos.nombre pNo,proyectos.rating pRa, cursos.nombre cno,proyectos.id pid").joins(:curso).where(user_id:usuario.id)
  @siguiendo=Proyecto.select("proyectos.desc des,proyectos.nombre Sno,proyectos.rating sra, cursos.nombre snoo,proyectos.id sid").joins(:curso).where(user_id:usuario.id,sigo:1)

  end

  def obtenerId
  @idObt=params[:aa]
  end

  def  primerTab
  end


  def  crearp
      usuario=User.find_by(email:session[:usuario])
    cursoid=Curso.find_by(nombre:params["cursosele"])
    nuevoProyec=Proyecto.new(nombre:params["nombreP"],desc:params["descC"],user_id:usuario.id,curso_id:cursoid.id,sigo:1)
    nuevoProyec.save
    redirect_to '/proyecto/ver'


  end


  def modificar

    cursoid=Curso.find_by(nombre:params["CursosC"])
    nuevo=Proyecto.find_by(id:params["idproyec"])
    nuevo.nombre=params["noP"]
    nuevo.desc=params["deC"]
    nuevo.curso_id=cursoid.id
    nuevo.save
    redirect_to '/proyecto/ver'
  end


  def eliminar
    proyecto=Proyecto.find_by(id:params["@idPro"])
    proyecto.destroy
    redirect_to '/proyecto/ver'
  end


  def interesado

    proyecto=Proyecto.find_by(id:params["@idPro"])
    proyecto.sigo=0
    proyecto.save
   redirect_to '/proyecto/ver'
  end

def solover
  @mostror=Proyecto.select("proyectos.desc des,proyectos.nombre Sno,proyectos.rating sra,proyectos.id sid").where(id:params["@idMostrar"])


end

def  calificar

  proyecto=Proyecto.find_by(id:params["idpro"])
  proyecto.rating=params["cali"]
  proyecto.save
 redirect_to '/proyecto/ver'


end



end
