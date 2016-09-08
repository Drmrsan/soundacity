class SongsController < ApplicationController
  def index
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)

    if @song.save
      redirect_to song_path, notice: "Song successfully added!"
    else
      render 'new', notice:"Ups, something went wrong!"
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def song_params
      params.require(:song).permit(:title, :description, :user_id)
    end
end
