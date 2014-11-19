Rails.application.routes.draw do

  get 'sessions/create'
  get 'sessions/destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  get 'home/index'
  root "home#index"


  get '/step_one' => 'pages#index'
  get '/step_two' => 'pages#index'
end
