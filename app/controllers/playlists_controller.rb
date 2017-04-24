class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
    @users = User.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    # this is how to manually add the foreign key to params
    # did NOT do this here since included in playlist_params
    # @playlist.team_id = params[:team_id]
    if @playlist.save
      # leaving as singular so it redirects to new playlist
      redirect_to playlist_path
    else
      render :new
    end
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update_attributes(playlist_params)
      redirect_to playlist_path
    else
      render :edit
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to user_path
  end

private
  def playlist_params
    params.require(:playlist).permit(:playlist_title, :image_url)
  end

end
