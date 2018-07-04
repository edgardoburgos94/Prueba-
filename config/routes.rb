Rails.application.routes.draw do
  post 'send', to: 'send_id#send_json', as: 'send'
  get 'index', to: 'send_id#index', as: 'index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  constraints format: :json do
    post '/prueba', to: 'prueba#create', as: 'prueba'
  end

  root 'send_id#index'



end
