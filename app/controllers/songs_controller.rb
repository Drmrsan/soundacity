class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
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
    @user = @song.user
  end

  def edit
  end

  def update
    if @song.update (song_params)
      redirect_to song_path(@song), notice: "Details successfully updated!"
    else
      render 'new', notice:"Ups, something went wrong!"
    end
  end

  def destroy
    @song.destroy
    flash[:notice] = "Song deleted!"
    redirect_to songs_path
  end

  private
    def song_params
      params.require(:song).permit(:title, :description, :cover, :remote_cover_url, :audio)
    end

    def set_song
      @song = Song.find(params[:id])
    end
end
