Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  authenticated :admin do
    get '/admins/approvals', to: 'admins#approvals'
    put '/admins/approvals', to: 'admins#approve_account'
    get '/admins/user_accounts', to: 'admins#user_accounts'
    get '/admins/user_accounts/:id', to: 'admins#show_user', as: :user_profile
    get '/admins/user_accounts/:id/edit', to: 'admins#edit_user', as: :edit_user_profile
    put '/admins/user_accounts/:id', to: 'admins#modify_user'
    patch '/admins/user_accounts/:id', to: 'admins#modify_user'
    get '/admins/add_user', to: 'admins#add_user'
    post '/admins/add_user', to: 'admins#create_user'
    
    # get '/admins/transaction-list', to: 'admins#transaction_list', as: :user_transactions
  end

  authenticated :user do
    resources :portfolios
  end

  # devise_scope :admin do
  #   authenticated :admin do
  #     namespace :admins do
  #       get 'dashboard/index', as: :authenticated_root
  #       get '/admins/users-list', to: 'admins#users'
  #       resources :users
  #     end
  #   end
  # end

  # devise_scope :user do
  #   authenticated :user do
  #     namespace :users do
  #       get 'dashboard/index', as: :authenticated_root
  #       resources :portfolios
  #     end
  #   end
  # end

  #get '/admins/approvals', to: 'admins#approvals'
  
  root 'home#index'
  resources :transactions
end
