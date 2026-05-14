Rails.application.routes.draw do
  resources :posts
  resources :categories
  root "posts#index"
  get "about", to: "home#about"
  get "projects", to: "home#projects"
end
