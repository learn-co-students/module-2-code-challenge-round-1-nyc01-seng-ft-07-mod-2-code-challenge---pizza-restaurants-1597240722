Rails.application.routes.draw do
  resources :restaurant_pizzas
  get '/restaurants', to: 'restaurants#index'
  get '/pizzas', to: 'pizzas#index'
  resources :pizzas , only: [:index, :show]
  resources :restaurants , only: [:index, :show]
end
