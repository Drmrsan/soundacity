class AddSongIdToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :song_id, :integer
  end
end
