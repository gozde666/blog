Rails.application.routes.draw do
  root "home#index"
  
  # Yeni yazı ekleme sayfaları için:
  get "/new", to: "home#new"
  post "/create", to: "home#create"
end