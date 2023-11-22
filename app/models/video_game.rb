class VideoGame < ApplicationRecord
  has_many :reservations

  has_many :user, through: :reservations

  validates :title, :description, :price, :category, presence: true
  validates :title, uniqueness: true
end
