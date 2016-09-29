class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@song = @user.songs
	end

	def following
		@following_users = current_user.following
	end
end
