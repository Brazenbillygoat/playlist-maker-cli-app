class Song < ActiveRecord::Base 
    has_many :songplaylists
    has_many :playlists, through: :songplaylists 
end 