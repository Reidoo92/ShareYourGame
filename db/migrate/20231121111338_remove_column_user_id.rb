class RemoveColumnUserId < ActiveRecord::Migration[7.1]
  def change
    remove_column :video_games, :user_id, :bigint
  end
end
