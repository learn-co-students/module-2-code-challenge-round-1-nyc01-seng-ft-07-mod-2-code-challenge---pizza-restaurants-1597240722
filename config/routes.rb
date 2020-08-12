Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:index, :new, :create]
  resources :restaurants, only: [:index, :show]
  resources :pizzas, only: [:index, :show]

end
