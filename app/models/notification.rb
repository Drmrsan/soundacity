class Notification < ActiveRecord::Base
	belongs_to :recipient, class_name: "User"
	belongs_to :actor,		 class_name: "User"
	belongs_to :notifiable, polymorphic: true
	belongs_to :song
	default_scope {order("created_at DESC")}
end
