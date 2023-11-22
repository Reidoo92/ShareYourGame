class Reservation < ApplicationRecord
  belongs_to :video_game
  belongs_to :user

  validates :user_id, :video_games_id, :start_location, :end_location, presence: true
  validates :user_id, :video_games_id, uniqueness: true
  validates :video_game_id, uniqueness: { scope: :user_id, message: "Vous avez déjà réservé ce jeu." }
end
