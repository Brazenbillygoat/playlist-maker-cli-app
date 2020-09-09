require 'active_record'
require_relative './app/models/user.rb'
require_relative './app/models/songplaylist.rb'
require_relative './app/models/song.rb'
require_relative './app/models/playlist.rb'
require_relative './config/environment.rb'
require 'Pry'


welcome_response = welcome
search_for_user_name(welcome_response)



# def search_for_user_name(name)

# def welcome_returning_user 

# def create_new user 

# def display_all_songs #songs to select from 


#User 
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

def search_songs_by_duration(duration)
    Song.
    #find song by artist 
end 

def user_can_delete_playlist 
end 


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


