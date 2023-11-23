class VideoGame < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :title, :description, :price, :category, presence: true
  validates :title, uniqueness: true
end
