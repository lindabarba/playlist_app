class Song < ApplicationRecord
  has_many :playsongs
  has_many :playlists, through: :playsongs
end
