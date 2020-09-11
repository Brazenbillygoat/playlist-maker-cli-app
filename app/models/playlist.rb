class Playlist < ActiveRecord::Base 
    belongs_to :user 
    has_many :songplaylists
    has_many :songs, through: :songplaylists   

    def add_a_song(song_number)
        self.songs.push(Song.find(song_number))
    end

    def delete_song(song_number)
        self.songs.delete(self.songs[song_number - 1])
    end

    def display_playlist_songs(playlist_id)
        count = 1
        puts "\n#{self.name}:"
        binding.pry
        self.songs.each do |song|
            puts "#{count} #{song.name} - #{song.artist}"
            count += 1
        end
        puts
    
    end
   
end

def create_new_playlist(user)
    puts "What would you like your playlist to be called?"
    new_playlist_name = gets.chomp
    new_playlist = Playlist.create(name: new_playlist_name, user_id: user.id)
    puts "\n" + new_playlist_name + ", was created!\n"
    return new_playlist.id
end

def current_playlist_being_edited(user)
    playlist_choice = search_for_name(user.name)
    user_playlists = Playlist.all.select { |pl| pl.user_id == user.id}
    return user_playlists[playlist_choice - 1]
end

def display_user_playlists(user) # once user selects a playlist what happens? 
    count = 1
    puts "\nWhich playlist do you want to edit?"
    user_playlists = Playlist.all.select { |pl| pl.user_id == user.id}
    user_playlists.each do |pl|

        puts "#{count} - #{pl.name}" #select with count number 
        count += 1
    end
    puts "#{count} - Create a new playlist.\n" #3
    return user_playlists
end 

