class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :bio, presence: true
end