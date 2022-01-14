Rails.application.routes.draw do
  resources :admins, only: [:new, :create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  devise_for :users
  root 'home#index'
  resources :portfolios
  resources :transactions
end
