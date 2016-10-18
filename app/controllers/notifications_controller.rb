class NotificationsController < ApplicationController

	def index
		@notifications = Notification.all.order("created_at DESC").limit(3)
	end

	def show
		
	end

	def mark_as_read
		@notification = Notification.where(recipient: current_user)
		@notification.update_all(read_at: Time.zone.now)
		@notification_song = Notification.find(params[:id]).song_id
		redirect_to song_path(@notification_song)
	end

end