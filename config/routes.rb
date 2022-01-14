Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  devise_scope :user do
    authenticated :user do
      namespace :users do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end

  devise_scope :admin do
    authenticated :admin do
      namespace :admin do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end

  #get '/admins/approvals', to: 'admins#approvals'
  
  root 'home#index'
  resources :portfolios
  resources :transactions
end
