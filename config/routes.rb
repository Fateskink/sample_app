Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'static_pages/home'
  # Rails.application.default_url_options = 'localhost:3000'

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :microposts, only: [:create, :destroy]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :relationships, only: [:create, :destroy]
  # get '/show', to: 'users#show'
  # root 'application#hello'
end
