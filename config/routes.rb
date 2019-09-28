Rails.application.routes.draw do
  get 'home', to: 'home#index'
  resources :articles
  devise_for :users, controllers: { registrations: 'users/registrations'}
  resources :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
