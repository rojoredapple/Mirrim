Rails.application.routes.draw do

  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'

  root 'moods#index'

  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]

end
