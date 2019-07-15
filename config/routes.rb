Rails.application.routes.draw do

  get 'sessions/new'

  get 'user/:id' => 'users#show'
  root 'users#show'
  get '/signup', to: 'users#new'
  #get '/login', to: 'sessions#new'
  #get '/login', to: 'sessions#create'
  #get '/logout', to: 'sessions#destroy'
  resources :users
  get '/journals', to: 'journals#new'
  resources :journals
end
