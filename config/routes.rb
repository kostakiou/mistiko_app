Rails.application.routes.draw do
  resources :secrets
  root 'secrets#index'
end
