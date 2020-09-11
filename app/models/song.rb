require_relative '../../config/environment.rb'


class Song < ActiveRecord::Base
    has_many :songplaylists
    has_many :playlists, through: :songplaylists 


end



def display_all_songs 
    puts "\nSong Choices:"
    Song.all.each do |song|
        puts "#{song.id} #{song.name} - #{song.artist}"
    end 

end 





