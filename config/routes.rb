Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
    resources :posts, only: [:index, :show]
  end

  scope ":user_id", as: "user" do
    resource :profile, only: [:new, :create, :show, :edit, :update]
    resources :posts
  end

  resources :categories
  root "home#index"
  get "about", to: "home#about"
  get "projects", to: "home#projects"
end
