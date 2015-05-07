Rails.application.routes.draw do
  resources :comments
  devise_for :users, :skip => [:registrations] 
	as :user do
  	get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  	put 'users' => 'devise/registrations#update', :as => 'user_registration'
	end
  resources :secrets
  root 'secrets#new'
end
