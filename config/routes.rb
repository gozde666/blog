Rails.application.routes.draw do
  # Ana sayfa: localhost:3000'e girince listeyi açar
  root "home#index"

  # Yeni yazı ekleme yolları
  get "/new", to: "home#new"
  post "/create", to: "home#create"

  # Yazı detay sayfası (Gözat)
  get "/post/:id", to: "home#show"

  # Silme yolu (Butonun aradığı tam adres budur)
  delete "/delete/:id", to: "home#destroy"

  # Düzenleme yolları
  get "/edit/:id", to: "home#edit"
  patch "/update/:id", to: "home#update"

  # Ders notlarında istenen yeni sayfalar
  get "about", to: "home#about"
  get "projects", to: "home#projects"
end