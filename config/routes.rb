Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :prices, except: [:index, :show]
end
