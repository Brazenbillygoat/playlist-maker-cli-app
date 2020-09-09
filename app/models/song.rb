class Song < ActiveRecord::Base 
    has_many :songplaylists
    has_many :playlists, through: :songplaylists 

end

def display_all_songs #songs to select from 
    #display all songs that are not in user playlist 
    #Playlist.where(user_id = )
end 

def display_user_playlist

end


# def can_be_instantiated_and_then_saved 
#     playlistone = Playlist.create 
# end 

