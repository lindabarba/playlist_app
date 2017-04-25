class Playlist < ApplicationRecord
  has_many :playsongs
  has_many :songs, through: :playsongs
end
