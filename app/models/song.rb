class Song < ActiveRecord::Base
	# Assotiations
	belongs_to :user
	has_many :users, through: :comments
	has_many :comments, dependent: :destroy
	has_many :song_categories, dependent: :destroy
	has_many :categories, through: :song_categories

	default_scope {order("created_at DESC")}
	
	# Validations
	validates :title, presence: true, length: { minimum: 3, maximum: 100 }
	validates :user_id, presence: true
	
	# Uploaders
	mount_uploader :cover, CoverUploader
	mount_uploader :audio, AudioUploader
	
	#Favourites
	acts_as_votable

	def self.search(query)
	  where("title like ?", "%#{query}%")
	  where("description like ?", "%#{query}%")
	end

	private

    # Validates the size of an uploaded picture.
    def image_size
      if image.size > 5.megabytes
        errors.add(:image, "should be less than 5MB")
      end
    end

end
