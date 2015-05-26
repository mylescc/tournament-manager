Rails.application.routes.draw do

  root 'homepage#index'

  resources :tournaments, only: [:index, :show]
  resources :matches, only: [:index, :show]
  resources :users, only: [:index, :show, :new, :create]

  get 'logout', to: 'sessions#destroy'
end
