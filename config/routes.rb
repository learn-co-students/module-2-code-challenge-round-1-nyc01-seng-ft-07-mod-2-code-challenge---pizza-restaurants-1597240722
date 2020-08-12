Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:index, :new, :create]
  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :show]
end
