Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:new, :create]
  resources :restaurants, only: [:index, :show]
  resources :pizzas, only: [:index, :show]
  #get '/restaurants', to: 'restaurants#index'
  #get '/pizzas', to: 'pizzas#index'
end
