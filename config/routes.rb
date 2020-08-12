Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :pizzas
  resources :restaurants

  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end
