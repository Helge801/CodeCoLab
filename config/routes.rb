Rails.application.routes.draw do
  resources :posts
  resources :sub_categories
  resources :categories
  devise_for :users
  root to: "categories#index"
end
