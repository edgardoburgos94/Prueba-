Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  constraints format: :json do
    post '/prueba', to: 'prueba#create', as: 'prueba'
    get '/prueba', to: 'prueba#create', as: 'prueba'
  end



end
