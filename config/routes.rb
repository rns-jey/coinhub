Rails.application.routes.draw do
  namespace :admins do
    get 'dashboard/index'
  end

  namespace :users do
    get 'dashboard/index'
  end
  
  devise_for :admins
  devise_for :users

  #get '/admins/approvals', to: 'admins#approvals'
  
  root 'home#index'
  resources :portfolios
  resources :transactions
end
