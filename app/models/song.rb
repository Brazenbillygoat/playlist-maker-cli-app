class Song < ActiveRecord::Base 
    has_many :songplaylists
    has_many :playlists, through: :songplaylists 
end 

def can_be_instantiated_and_then_saved 
    playlistone = Playlist.create 
end 

