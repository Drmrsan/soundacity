class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, index: true
      t.text :description
      t.references :user
      t.integer :user_id, index: true
      t.timestamps null: false
    end
  end
end
