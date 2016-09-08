class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = current_user.songs.build(song_params)
    
    if @song.save
      redirect_to song_path(@song), notice: "Song successfully added!"
    else
      render 'new', notice:"Ups, something went wrong!"
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
     @song = Song.find(params[:id])

    if @song.update (song_params)
      redirect_to song_path(@song), notice: "Details successfully updated!"
    else
      render 'new', notice:"Ups, something went wrong!"
    end
  end

  def destroy
  end

  private
    def song_params
      params.require(:song).permit(:title, :description, :cover, :remote_cover_url, :audio)
    end
end
