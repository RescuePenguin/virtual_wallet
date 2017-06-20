Rails.application.routes.draw do
  resources :transactions
  resources :credit_cards
  resources :wallets
  resources :homes
  devise_for :users

  get 'home/index'

  root 'home#index'
end
