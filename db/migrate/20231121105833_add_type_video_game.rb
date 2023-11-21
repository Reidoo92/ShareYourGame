class AddTypeVideoGame < ActiveRecord::Migration[7.1]
  def change
    add_column :video_games, :category, :string
  end
end
