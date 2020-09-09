
##user.playlists ??
##user.song ??

welcome
search_for_user_name(welcome_response)





def welcome
puts "Welcome! Please enter your name:"
welcome_response = gets.chomp
welcome_response
end 

def search_for_user_name(name)
    #user.find_by(name:) 
    #found --> welcome_returning_user
    #not found-->create_new 
end 

def welcome_returning_user 
puts "Glad to see you back #{name}. We love your taste in music."
    display_all_song 
#Your playlist: show all songs where ID matches user -- > user.playlist 
#Select from: display all songs 
#option add song 
#option remove song 
#search song by atrist 
#search song by duration 
end 

def create_new user 
puts "Hello #{name}! We are happy you are joining us. Plese select some songs, and we can get  you started."
#display all songs 
#if user has no songs 
    #option add song 
    #search song by atrist 
    #search song by duration 
end 

def display_all_songs #songs to select from 
    #display all songs that are not in user playlist 
    Playlist.where(user_id = )
end 

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


