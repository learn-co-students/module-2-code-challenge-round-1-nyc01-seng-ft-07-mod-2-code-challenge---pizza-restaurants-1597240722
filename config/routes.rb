Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:new, :create]
  resources :pizzas, only: [:show, :index]
  resources :restaurants, only: [:show, :index]
end
