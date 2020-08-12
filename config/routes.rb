Rails.application.routes.draw do
  resources :branches
  resources :restaurants, only: [:show, :index]
  resources :pizzas
end
