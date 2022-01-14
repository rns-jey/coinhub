Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :admins
  devise_for :users
  root 'home#index'
  resources :portfolios
  resources :transactions
end
