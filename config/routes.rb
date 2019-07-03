Rails.application.routes.draw do

  get 'sessions/new'

  root 'users#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users

end
