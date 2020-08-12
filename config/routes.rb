Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:new, :create]

  resources :restaurants, only: [:index, :show]
  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/:id', to: 'restaurants#show'
  
  resources :pizzas, only: [:index, :show]

  # get '/pizzas', to: 'pizzas#index'
  # get '/pizzas/:id', to: 'pizzas#show', as: 'pizza_path'
end
