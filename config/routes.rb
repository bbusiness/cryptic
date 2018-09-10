Rails.application.routes.draw do
  resources :wallets
  resources :high_scores
  resources :coins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :accounting do
    resources :categories
  end

  get 'home/index'
  root 'home#index'
end
