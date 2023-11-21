class RemoveDateLocation < ActiveRecord::Migration[7.1]
  def change
    remove_column :video_games, :date_location
  end
end
