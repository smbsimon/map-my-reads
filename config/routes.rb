Rails.application.routes.draw do

  get 'sessions/create'
  get 'sessions/destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  get  'home/index'
  root 'home#index'


  resources :books
  resources :locations, only: [:index]
  resources :about,     only: [:index]
  resources :shares,    only: [:new]
end
