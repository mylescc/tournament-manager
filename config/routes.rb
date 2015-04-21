Rails.application.routes.draw do

  root 'homepage#index'

  resources :tournaments, only: [:index, :show]
  resources :players, only: [:index, :show]
  #resources :matches
end
