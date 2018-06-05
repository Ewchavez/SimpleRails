Rails.application.routes.draw do

  get 'middle/verificar'

  get 'login/index'
  post 'login/verificar'
  get 'login/registrar'
  get 'proyecto/ver'
  get 'proyecto/crearp'
  get 'proyecto/modificar'
  get 'proyecto/eliminar'
  get '/proyecto/interesado'
  get '/proyecto/solover'
  get '/proyecto/calificar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
