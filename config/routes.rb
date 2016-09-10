Rails.application.routes.draw do

  devise_for :users
  # Pages Routes
  get 'home',       to: 'songs#index'
  get 'collection', to: 'pages#collection'

  # Root page of application
  root 'pages#index'

  resources :songs do
    resources :comments, only: [:create]
  end
end
