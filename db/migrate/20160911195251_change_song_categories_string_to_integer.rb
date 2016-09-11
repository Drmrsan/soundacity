class ChangeSongCategoriesStringToInteger < ActiveRecord::Migration
  def change
  	change_column :song_categories, :song_id, 'integer USING CAST(song_id AS integer)'
  	change_column :song_categories, :category_id, 'integer USING CAST(category_id AS integer)'
  end
end
