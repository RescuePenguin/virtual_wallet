Rails.application.routes.draw do
  resources :transactions
  resources :credit_cards
  resources :wallets
  resources :homes
  devise_for :users

  get 'public/index'

  root 'public#index'
end
