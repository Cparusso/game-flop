Rails.application.routes.draw do

  resources :consoles

  get '/games', to: "games#index"
  get '/games/new', to: "games#new"
  get '/games/:id', to: "games#show", as: "game"
  get '/games/:id/edit', to: "games#edit"
  post '/games', to: "games#create"
  patch '/games/:id', to: "games#update"
  delete '/games/:id', to: "games#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
