Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root 'moods#index'
  get '/signup', to: 'users#new'
<<<<<<< HEAD
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
=======
  #get '/login', to: 'sessions#new'
  #get '/login', to: 'sessions#create'
  #get '/logout', to: 'sessions#destroy'
  resources :users
  get '/journals', to: 'journals#new'
  resources :journals
>>>>>>> 0a431bd53f9c5e6a68f864c0320e322d398e1cd1
end
