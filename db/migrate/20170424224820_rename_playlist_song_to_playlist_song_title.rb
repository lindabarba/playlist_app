class RenamePlaylistSongToPlaylistSongTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :playlists, :song, :song_title
  end
end
