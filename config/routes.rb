Rails.application.routes.draw do
  resources :consoles, only: [:index, :show]
  resources :games

  get '/search', to: 'games#index'

end
