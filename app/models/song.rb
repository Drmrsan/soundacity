class Song < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	# validates :title, presence: true, length: { minimum: 3, maximum: 100 }
	# validates :user_id, presence: true
	mount_uploader :cover, CoverUploader
	mount_uploader :audio, AudioUploader
end
