
require 'active_record'
require_relative './app/models/user.rb'
require_relative './app/models/songplaylist.rb'
require_relative './app/models/song.rb'
require_relative './app/models/playlist.rb'

#Dir[File.join(__dir__, './app/models/', '*.rb')].each { |file| require file }
require_relative './config/environment.rb'
require 'Pry'


welcome_response = welcome()

name = format_name_to_titlecase(welcome_response)
user = User.find_by(name: name)

search_for_user_name(user)

display_user_playlists(user) # Shows "Which playlist do you want to edit?"

playlist = gets.chomp

display_playlist_songs(playlist.to_i - 1) # Shows all the songs on th eselected playlist

crud_options_for_existing_playlist() #asks: "What would you like to do:
                                             #"1 - Add a song"
                                             #"2 - Delete a song"
                                             #"3 - That's good for now"

crud_choice = gets.chomp.to_i

if crud_choice == 1
     display_all_songs()
     puts "Enter the number of the song that you would like to add?"
     add_a_song(song_number)
elsif crud_choice == 2
     display_all_songs

elsif crud_choice == 3
     puts "Enjoy your tunes!"
# else
#      puts "That is not an option."

end


















# def search_for_user_name(name)

# def welcome_returning_user 

# def create_new user 

# def display_all_songs #songs to select from 

# def add_song(song_id)

# def remove_song(song_id)

# def search_songs_by_artist(name)

# def search_songs_by_duration(duration)

#     #find song by artist 
# end 

# def user_can_delete_playlist 
# end 


#Welcome!
#user inputs name 
#Crossrefernce name with data base 
    #If name is in database show user playlist and additional song selection
            #User can delete songs from playlist 
                 #DELETE songplaylist relationship is deleted

            #User can add songs to playlist 
                 #ADD songplaylist is created connected user ID to song ID


    #If name is not in database show songs for user to select from 
        #User can add songs to playlist 


