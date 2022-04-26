Rails.application.routes.draw do
  root "photos#index"

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos

  # get "/users/:id" => "users#show", as: :user
  # resources :users, only: [:show]

  get ":username/feed" => "photos#feed", as: :user_feed

  get ":username/discover" => "photos#discover", as: :discover

  get ":username/liked" => "photos#liked", as: :liked_photos

  get "/:username" => "users#show", as: :user

  get ":username/feed" => "users#feed", as: :feed

  get ":username/liked" => "users#liked", as: :liked
  
end
