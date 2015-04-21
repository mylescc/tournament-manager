Rails.application.routes.draw do

  root 'homepage#index'

  resources :tournaments
  #resources :matches
  #resources :players
end
