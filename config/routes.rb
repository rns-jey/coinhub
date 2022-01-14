Rails.application.routes.draw do
  devise_for :users, :path => 'users'
  
  root 'home#index'
  resources :portfolios
  resources :transactions
end
