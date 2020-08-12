Rails.application.routes.draw do
  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :show]
  resources :restaurant_pizzas, only: [:new, :create]
end
