Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :admin do
    authenticated :admin do
      namespace :admins do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end

  devise_scope :user do
    authenticated :user do
      namespace :users do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end

  #get '/admins/approvals', to: 'admins#approvals'
  
  root 'home#index'
  resources :portfolios
  resources :transactions
end
