class VideoGame < ApplicationRecord
  has_many :reservations

  has_many :user, through: :reservations

  validates :title, :descritpion, :price, :category, presence: true
  validates :title, uniqueness: true
end
