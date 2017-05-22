Rails.application.routes.draw do
  
  get 'sessions/create'

  get 'sessions/destroy'

  root 'todos#index'
  get '/about', to: 'pages#about'
  get '/help', to: 'pages#help'
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  
  resources :sessions, only: [:create, :destroy]
  #resource :home, only: [:show]
end
