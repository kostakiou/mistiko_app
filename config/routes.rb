Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :secrets
  root 'secrets#new'
end
