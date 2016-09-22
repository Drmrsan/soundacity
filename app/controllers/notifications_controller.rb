class NotificationsController < ApplicationController

	def mark_as_read
		@notifications = Notification.where(recipient: current_user)
		@notifications.update_all(read_at: Time.zone.now)
		redirect_to :back
	end
end