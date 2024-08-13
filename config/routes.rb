Rails.application.routes.draw do
  resources :measured_ingredients
  resources :measurements
  resources :dishes
  resources :ingredients
  resources :restaurants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
