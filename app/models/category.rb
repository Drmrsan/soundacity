class Category < ActiveRecord::Base
	has_many :song_categories
	has_many :songs, through: :song_categories
	validates :name, presence: true
end
