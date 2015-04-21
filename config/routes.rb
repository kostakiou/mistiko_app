Rails.application.routes.draw do
  devise_for :users
  resources :secrets
  root 'secrets#index'
end
