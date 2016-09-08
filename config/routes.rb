Rails.application.routes.draw do

  devise_for :users
  # Pages Routes
  get 'home',       to: 'pages#home'
  get 'collection', to: 'pages#collection'
  get 'upload',     to: 'pages#upload'

  # Root page of application
  root 'pages#index'
end
