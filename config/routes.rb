Rails.application.routes.draw do
  root to: "users#welcome"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users
  resources :franchises
end
