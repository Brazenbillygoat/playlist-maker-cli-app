require 'active_record'
# require_relative '../../run.rb'
# require_relative './song.rb'

class User < ActiveRecord::Base
    has_many :playlists
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
        user_playlists = user.playlists
        playlist = display_user_playlists(user)
        if playlist == user.playlists.length + 1
            create_new_playlist(user)
        end
        if user_playlists == nil
            puts "\nYour do not have any playlists."
        else
            current_playlist = user_playlists[playlist - 1]
            current_playlist.display_playlist_songs(playlist) # Shows all the songs on the selected playlist
        end 
        return playlist
    else
        new_playlist_id = create_new_user(name)
        return new_playlist_id
    end
end 
def welcome_returning_user(user)
    puts "\nGlad to see you back #{user.name}. We love your taste in music."
end 

def create_new_user(name) 
    new_user = User.create(name: name)
    puts "\nHello #{new_user.name}! We are happy you are joining us."
    return new_playlist_id = create_new_playlist(new_user)
end 
 
