Rails.application.routes.draw do
  resources :high_scores
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :coins

  root 'home#index'
end
