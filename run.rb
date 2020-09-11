
require 'active_record'
require 'Pry'

require_relative './app/models/user.rb'
require_relative './app/models/songplaylist.rb'
require_relative './app/models/song.rb'
require_relative './app/models/playlist.rb'
require_relative './config/environment.rb'


welcome_response = welcome()

name = format_name_to_titlecase(welcome_response)

playlist_id = search_for_name(name)
current_playlist = Playlist.find(playlist_id)

user = User.find_by(name: name)

# playlist = current_playlist_being_edited(user)
# playlist_choice = search_for_name(name)
# user_playlists = Playlist.all.select { |pl| pl.user_id == user.id}
# puts user_playlists[playlist_choice - 1].name


creating = true
while creating

     crud_options_for_existing_playlist() #asks: "What would you like to do:
                                                  #"1 - Add a song"
                                                  #"2 - Delete a song"
                                                  #"3 - Create new playlist"
                                                  #"4 - That's good for now"
     crud_choice = gets.chomp.to_i

     if  !((1..5) === crud_choice)
          
          puts "That is not an option.\n"
     else

          if crud_choice == 1
               display_all_songs()
               puts "Enter the number of the song that you would like to add?"
               song_choice = gets.chomp.to_i
               current_playlist.add_a_song(song_choice)
               display_playlist_songs(playlist_id)
          elsif crud_choice == 2
               puts "Enter the number of the song that you would like to delete?"
               song_choice = gets.chomp.to_i
               current_playlist.delete_song(song_choice)
               display_playlist_songs(playlist_id)
          elsif crud_choice == 3
               create_new_playlist(user) 
          elsif crud_choice == 4
               display_user_playlists(user) #working on 
          else crud_choice == 5
               puts "Enjoy your tunes!"
               creating = false 
          end 
     end

end






















