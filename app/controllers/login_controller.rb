class LoginController < ApplicationController

  def index
    @usuarios=User.all

  end



  def verificar
     usuario = params[:email]
     contrasenia = params[:clave]

     if  User.find_by(email: params[:email] , clave:params[:clave])
       @mensaje = false

      session[:usuario]=usuario

       redirect_to('/proyecto/ver')  and return
     render 'login'

     else
       @mensaje = true
       render 'index'


     end
   end

 def  enviarU

 end










   def registrar


     nuevo=User.create(email: params[:email],  clave:params[:clave] ,nombre:params[:nombre])

      nuevo.save
   @mensaje = true



   end














end
