Rails.application.routes.draw do
  resources :documents
  resources :engines
  resources :brands
  resources :cars
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "brands#index"
end
