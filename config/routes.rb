Rails.application.routes.draw do
  resources :transactions
  resources :credit_cards

  # Wallet Routing
  get 'wallet', to: 'wallets#show'
  get 'add_funds', to: 'wallets#edit'
  put 'wallet', to: 'wallets#update'

  devise_for :users, controllers: { registrations: 'registrations' }

  get 'public/index'

  root 'public#index'
end
