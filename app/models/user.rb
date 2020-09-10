require 'active_record'
# require_relative './song.rb'
#Dir[File.join(__dir__, './', '*.rb')].each { |file| require file }

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

def search_for_user_name(name)
    name = format_name_to_titlecase(name)
  
    if User.find_by(name: name)
        user = User.find_by(name: name)
        welcome_returning_user(user)
    else
        create_new_user(name)
    end

end 

def welcome_returning_user(user)
    binding.pry
    puts "Glad to see you back #{user.name}. We love your taste in music."
    display_user_playlists(user)

    #Your playlist: show all songs where ID matches user -- > user.playlist 
    #Select from: display all songs 
    #option add song 
    #option remove song 
    #search song by atrist 
    #search song by duration 
end 

def create_new_user(name)
    User.create(name: name)
    puts "Hello #{name}! We are happy you are joining us. Plese select some songs, and we can get you started."
    #display all songs 
    #if user has no songs 
        #option add song 
        #search song by atrist 
        #search song by duration 
end 

def add_song(song_id)
    Songplaylist.new(self, song_id)
    #once first song is added give option to delete 
end 

def remove_song(song_id)
    Songplaylist.destroy(self, song_id)
    #find by song_id and delete form user playlist 
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

#     Song Name             Artist  
# 01 The Zephyr Song - Red Hot Chile Peppers 
# 01 The Zephyr Song - Red Hot Chile Peppers 
# 01 The Zephyr Songdhkjhfjhfkjdshkjhkjsdh - Red Hot Chile Peppers 
