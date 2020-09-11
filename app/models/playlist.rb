class Playlist < ActiveRecord::Base 
    belongs_to :user 
    has_many :songplaylists
    has_many :songs, through: :songplaylists   

    def add_a_song(song_number)
        Playlist.all.each do |pl|
          
            if self == pl
              
                pl.songs.push(Song.find(song_number))
            end
        end
    end

    def delete_song(song_number)
        Playlist.all.each do |pl|
            if self == pl
                pl.songs.delete(Song.find(song_number))
            end
        end
    end
   
end

def create_new_playlist(user)
    puts "What would you like your playlist to be called?"
    new_playlist_name = gets.chomp
    Playlist.create(name: new_playlist_name, user_id: user.id)
    puts "\n" + new_playlist_name + ", was created!\n"
end

def current_playlist_being_edited(user)
  
    playlist_choice = search_for_name(user.name)
    user_playlists = Playlist.all.select { |pl| pl.user_id == user.id}
    return user_playlists[playlist_choice - 1]
end
