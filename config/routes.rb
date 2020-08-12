Rails.application.routes.draw do
  resources :restaurant_pizza, only: [:new, :create]
  
  
  resources :restaurants, only: [:index, :show]
  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurant/id:', to: 'restaurant#show'
  
  
  resources  :pizzas, only: [:index, :show]
  # get '/pizzas', to: 'pizzas#index'
  # get '/pizzas/id:', to: 'pizzas#show', as: 'pizza_path'
end
