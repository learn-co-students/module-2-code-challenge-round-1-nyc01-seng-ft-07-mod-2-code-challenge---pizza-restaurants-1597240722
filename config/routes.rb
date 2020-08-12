Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:new, :create]
  resources :pizzas
  resources :restaurants
  get '/restaurants', to: 'restaurants#index'
  get '/pizzas', to: 'pizzas#index'
end
