class Song < ActiveRecord::Base
    has_many :songplaylists
    has_many :playlists, through: :songplaylists 


def display_all_songs #songs to select from 
    #display all songs that are not in user playlist 
    #Playlist.where(user_id = )
def self.display_all_songs 
    self.all.each do |song|
        title = song.name 
        artist = song.artist 
        song = song.duration
    binding.pry
    end 
end 

##Title: Songs, Artist: Red Hot Chile Peppers, Duration: 5  

end 

# def display_user_playlist

# end


# def can_be_instantiated_and_then_saved 
#     playlistone = Playlist.create 
# end 

