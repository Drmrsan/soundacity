class PagesController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to home_path
  	end
  end

  def home
  end

  def collection
  end

  def upload
  end
end
