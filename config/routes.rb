Rails.application.routes.draw do

  get 'songs/index'

  get 'songs/new'

  get 'songs/create'

  get 'songs/show'

  get 'songs/edit'

  get 'songs/update'

  get 'songs/destroy'

  devise_for :users
  # Pages Routes
  get 'home',       to: 'pages#home'
  get 'collection', to: 'pages#collection'
  get 'upload',     to: 'pages#upload'

  # Root page of application
  root 'pages#index'

  resources :songs
end
