Rails.application.routes.draw do
  resources :transactions, only: [:index, :new, :create]
  resources :credit_cards

  # Wallet Routing
  get 'wallet', to: 'wallets#show'
  get 'add_funds', to: 'wallets#edit'
  put 'wallet', to: 'wallets#update'

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :users, only: [] do
    collection do
      get :check_email
    end
  end

  get 'public/index'

  root 'public#index'
end
