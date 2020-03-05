Rails.application.routes.draw do
  resources :championlists
  resources :champions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  post '/login', to: 'users#login'
  get '/profile', to: 'users#profile'

  get "/persist", to: "users#persist"
  delete '/champions', to: 'champions#destroy'
  patch '/champions', to: 'champions#update'

  post "/championlists", to: 'championlists#create'

  end
