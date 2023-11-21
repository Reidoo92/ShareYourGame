class Reservation < ApplicationRecord
  belongs_to :video_game
  belongs_to :user

  validates :user_id, :video_games_id, :start_location, :end_location, presence: true
  validates :user_id, :video_games_id, uniqueness: true
end
