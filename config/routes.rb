Rails.application.routes.draw do
  root 'homepage#index'

  get '/sign_up', to: 'users#new', as: 'sign_up'
  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  get 'logout', to: 'sessions#destroy'


  resources :tournaments, only: [:index, :show]
  resources :ladders
  resources :matches, only: [:index, :show]
  resources :users, only: [:index, :show, :new, :create]

  resource :session, only: [:create]

end
