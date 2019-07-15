Rails.application.routes.draw do

  root 'users#show'

  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get 'user/:id' => 'users#show'
  get '/mantra', to: 'mantras#new'
  get '/journals', to: 'journals#new'
  get '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  
  resources :users
  resources :mantras

  resources :journals
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
