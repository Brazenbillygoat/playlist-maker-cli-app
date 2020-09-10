class Playlist < ActiveRecord::Base 
    belongs_to :user 
    has_many :songplaylists
    has_many :songs, through: :songplaylists   
end

def create_new_playlist(user)
    puts "What would you like your playlist to be called?"
    new_playlist_name = gets.chomp
    Playlist.create(name: new_playlist_name, user_id: user.id)
    puts "\n" + new_playlist_name + ", was created!\n"
end