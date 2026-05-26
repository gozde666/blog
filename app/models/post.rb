class Post < ApplicationRecord
  has_rich_text :article
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_and_belongs_to_many :categories
  has_one_attached :image

  normalizes :title, with: -> title { title.squish.titlecase }

  validates :title, presence: { message: "Post başlığı boş bırakılamaz." }, uniqueness: true, length: { maximum: 255 }
  validates :article, presence: { message: "Post içeriği boş bırakılamaz." }, length: { maximum: 65_535 }
end
