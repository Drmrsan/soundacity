Rails.application.routes.draw do

  get 'relationships/create'

  get 'relationships/destroy'

  devise_for :users
  # Pages Routes
  get 'home',       to: 'songs#index'
  get 'collection', to: 'pages#collection'

  # Root page of application
  root 'pages#index'

  resources :users, only: [:index, :show] do
    member do
      get :following, :followers
    end
  end

  resources :relationships, only: [:create, :destroy]

  resources :categories, only: [:index, :show, :create]
  
  resources :songs do
    member do
      put "like", to: "songs#upvote"
    end  

    resources :comments, only: [:create]
  end

  resources :notifications do
    member do
      put "mark_as_read", to: "notifications#mark_as_read"
    end
  end
end
