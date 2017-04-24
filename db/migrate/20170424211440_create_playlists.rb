class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :playlist_title
      t.string :song
      t.integer :song_position
      t.string :image_url

      t.timestamps
    end
  end
end
