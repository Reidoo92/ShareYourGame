class VideoGame < ApplicationRecord
  has_many :reservations

  belongs_to :user, through: :reservations

  validates :title, :descritpion, :price, :category, presence: true
  validates :title, uniqueness: true
end
