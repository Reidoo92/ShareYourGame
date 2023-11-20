class CreateVideoGames < ActiveRecord::Migration[7.1]
  def change
    create_table :video_games do |t|
      t.string :title
      t.text :description
      t.float :price
      t.date :date_location
      t.float :rating

      t.timestamps
    end
  end
end
