class Post < ApplicationRecord
  validates :title, presence: { message: "başlığı boş bırakamazsın" }
  validates :body, presence: { message: "içeriği boş bırakamazsın" }
  validates :author, presence: { message: "yazar adını boş bırakamazsın" }
end