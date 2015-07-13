Rails.application.routes.draw do
  root 'homepage#index'

  get '/sign_up', to: 'users#new', as: 'sign_up'
  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  get 'logout', to: 'sessions#destroy'


  resources :tournaments
  resources :ladders
  resources :matches
  resources :users, only: [:index, :show, :new, :create]

  resource :session, only: [:create]
end
