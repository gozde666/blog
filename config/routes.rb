Rails.application.routes.draw do
  root "home#index"
  
  # Yeni yazı ekleme sayfaları için:
  get "/new", to: "home#new"
  post "/create", to: "home#create"
  delete "/delete/:id", to: "home#destroy"
  get "/post/:id", to: "home#show"
end