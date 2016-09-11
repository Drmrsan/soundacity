class CreateSongCategories < ActiveRecord::Migration
  def change
    create_table :song_categories do |t|
      t.string :song_id
      t.string :category_id

      t.timestamps null: false
    end
  end
end
