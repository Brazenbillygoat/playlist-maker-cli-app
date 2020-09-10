require 'active_record'
# require_relative './song.rb'
#Dir[File.join(__dir__, './', '*.rb')].each { |file| require file }

class User < ActiveRecord::Base
    has_many :playlists

    def add_a_song(song_number)
        
    end

end

def welcome
    puts "Welcome! Please enter your name:"
    welcome_response = gets.chomp
    return welcome_response
end 

def format_name_to_titlecase(name)
    name_formatting = name.split(" ")
    name_formatting = name_formatting.map { |w| w.capitalize }
    title_format = name_formatting.join(" ")
end

def search_for_name(name)
    user = User.find_by(name: name)
    if User.find_by(name: name)
        welcome_returning_user(user)
        display_user_playlists(user)
        playlist = gets.chomp
        display_playlist_songs(playlist.to_i - 1) # Shows all the songs on th eselected playlist
    else
        create_new_user(name)
    end
end 

def welcome_returning_user(user)
    puts "Glad to see you back #{user.name}. We love your taste in music."
end 

def create_new_user(name) 
    new_user = User.create(name: name)
    puts "\nHello #{new_user.name}! We are happy you are joining us."
    create_new_playlist(new_user)
end 
 

def search_songs_by_artist(name)
    #find song by artist 
end 

# def search_songs_by_duration(duration)
#     Song.
#     #find song by artist 
# end 

# def user_can_delete_playlist 
# end 

# def search_songs_by_duration(duration)
#     Song.
#     #find song by artist 
# end 

# def user_can_delete_playlist 
# end 
