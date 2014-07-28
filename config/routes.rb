Tibdirectory::Application.routes.draw do
  root 'listings#index'
  resources :listings
  resources :categories, only: [:new, :create]
  resources :users, only: [:new, :create]

  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
