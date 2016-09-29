class PagesController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to home_path
  	end

  	@songs = Song.all

  	@index = true

  end

  def collection
  	@songs = Song.all
    song = current_user.songs
    @categories = Category.all
  end
end
