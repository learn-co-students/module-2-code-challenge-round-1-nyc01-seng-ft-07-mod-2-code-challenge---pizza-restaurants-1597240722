Rails.application.routes.draw do
  resources :pizza_restaurants, only: [:new, :create]
  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :show]
end
