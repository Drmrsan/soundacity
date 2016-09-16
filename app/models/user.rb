class User < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :songs
  has_many :comments, dependent: :destroy
  validates :username, presence: true
end
