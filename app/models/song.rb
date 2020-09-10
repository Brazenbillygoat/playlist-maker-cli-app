require_relative '../../config/environment.rb'

class Song < ActiveRecord::Base
    has_many :songplaylists
    has_many :playlists, through: :songplaylists 


end

def self.display_all_songs 
    self.all.each do |song|
        title = song.name 
        artist = song.artist 
        song = song.duration
    binding.pry
    end 
end 



def display_user_playlists(user)
    count = 1
    puts "Which playlist do you want to edit?"
    user_playlists = Playlist.all.select { |pl| pl.user_id == user.id}
    Playlist.all.each do |pl|
  
        puts "#{count} - #{pl.name}"
        count += 1
    end
    
end

# playlist_selection = gets.chomp
# playlist_name = Playlist.all[playlist_selection.to_i - 1]

def display_playlist_songs(playlist)
    count = 1

    Playlist.all[playlist].songs.each do |song|
        puts "#{count} #{song.name} - #{song.artist}"
        count += 1
    end
end


# display_playlist_songs(playlist_selection)



# def can_be_instantiated_and_then_saved 
#     playlistone = Playlist.create 
# end 

