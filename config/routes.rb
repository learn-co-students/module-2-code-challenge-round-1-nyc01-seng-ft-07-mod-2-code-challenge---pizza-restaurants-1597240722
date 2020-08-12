Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show]
  resources :restaurant_pizzas, only: [:new, :create]
  resources :pizzas, only: [:index, :show]
end


# get '/restaurants', to: 'restaurants#index'
# get '/pizzas', to: 'pizzas#index'
# get '/restaurant_pizzas', to: 'restaurant_pizzas#new'
# post '/restaurant_pizzas', to: 'restaurant_pizzas#show'