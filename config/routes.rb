Rails.application.routes.draw do
  resources :comedies
  resources :animes
  resources :horrors
  resources :dramas
  resources :actions
  resources :genres
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
