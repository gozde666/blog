Rails.application.routes.draw do
  devise_for :users
  
  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
  end
  
  resources :posts
  resources :categories
  root "posts#index"
  get "about", to: "home#about"
  get "projects", to: "home#projects"
end
