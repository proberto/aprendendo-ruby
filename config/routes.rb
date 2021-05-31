Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create]
  resources :restaturants
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end