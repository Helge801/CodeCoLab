Rails.application.routes.draw do
  resources :posts do 
    member do
      put "like", to: "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  end

  resources :sub_categories
  resources :categories
  devise_for :users
  root to: "categories#index"
end
