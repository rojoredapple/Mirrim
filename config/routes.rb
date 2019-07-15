Rails.application.routes.draw do

  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'

<<<<<<< HEAD
  root 'moods#index'

  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
=======
  get 'user/:id' => 'users#show'
  root 'users#show'
  get '/signup', to: 'users#new'
  #get '/login', to: 'sessions#new'
  #get '/login', to: 'sessions#create'
  #get '/logout', to: 'sessions#destroy'
>>>>>>> d4f2d9d4888103543f3513dfd48bb21b4c1b005a
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]

end
