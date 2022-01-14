Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get '/admins/approvals', to: 'admins#approvals'
  
  root 'home#index'
  resources :portfolios
  resources :transactions
end
