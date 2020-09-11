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

def current_playlist_being_edited(user)
    binding.pry
    playlist_choice = search_for_name(user.name)
    user_playlists = Playlist.all.select { |pl| pl.user_id == user.id}
    return user_playlists[playlist_choice - 1]
end
