Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :restaurants
  resources :pizzas
end
