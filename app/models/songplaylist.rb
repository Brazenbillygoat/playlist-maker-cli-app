class Songplaylist < ActiveRecord::Base 
    belongs_to :song
    belongs_to :playlist
end 

def crud_options_for_new_playlist
    puts "What would you like to do:"
    puts "1 - Add a song"
    puts "5 - That's good for now"
end 

def crud_options_for_existing_playlist
    puts "What would you like to do:"
    puts "1 - Add a song"
    puts "2 - Delete a song"
    puts "3 - Create new playlist"
    puts "4 - View my playlists"
    puts "5 - That's good for now"
end





