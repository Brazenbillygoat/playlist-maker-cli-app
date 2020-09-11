require_relative '../../config/environment.rb'

class Song < ActiveRecord::Base
    has_many :songplaylists
    has_many :playlists, through: :songplaylists 


end

def display_all_songs 

    Song.all.each do |song|
        puts "#{song.id} #{song.name} - #{song.artist}"
        title = song.name 
        artist = song.artist 
        song = song.duration
       
    end 
end 


def display_user_playlists(user) # once user selects a playlist what happens? 
    count = 1
    puts "Which playlist do you want to edit?"
    user_playlists = Playlist.all.select { |pl| pl.user_id == user.id}
    user_playlists.each do |pl|

        puts "#{count} - #{pl.name}" #select with count number 
        count += 1
    end
    puts "#{count} - Create a new playlist." #3
    
end 

def display_songs_in_playlist(user)
    
    
    user_playlists = index 
    
    user_playlist[i-0]

end 

#display_playlist_songs(playlist_selection)

# playlist_name = Playlist.all[playlist_selection.to_i - 1]

def display_playlist_songs(playlist)
    count = 1
    
    Playlist.all[playlist].songs.each do |song|
        puts "#{count} #{song.name} - #{song.artist}"
        count += 1
    end

end


# def can_be_instantiated_and_then_saved 
#     playlistone = Playlist.create 
# end 

