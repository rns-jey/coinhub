Rails.application.routes.draw do
  get '/admins/approvals', to: 'admins#approvals'
  
  root 'home#index'
  resources :portfolios
  resources :transactions
end
