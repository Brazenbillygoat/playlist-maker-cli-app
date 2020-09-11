
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

user = User.find_by(name: name)

current_playlist = user.playlists[playlist_id - 1]

creating = true
while creating

     crud_options_for_existing_playlist() #asks: "What would you like to do:
                                                  #"1 - Add a song"
                                                  #"2 - Delete a song"
                                                  #"3 - Create new playlist"
                                                  #"4 - View my playlists"
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
               current_playlist.display_playlist_songs(playlist_id)
          elsif crud_choice == 2
               puts "Enter the number of the song that you would like to delete?"
               song_choice = gets.chomp.to_i
               current_playlist.delete_song(song_choice)
               current_playlist.display_playlist_songs(playlist_id)
          elsif crud_choice == 3
               create_new_playlist(user)
               playlist_id = display_user_playlists(user)
               current_playlist = user.playlists[playlist_id - 1]
               current_playlist.display_playlist_songs(playlist_id)
          elsif crud_choice == 4
               playlist_id = display_user_playlists(user)
               if playlist_id == user.playlists.length + 1
                    create_new_playlist(user)
                end
               current_playlist = user.playlists[playlist_id - 1]
               current_playlist.display_playlist_songs(playlist_id) 
          else crud_choice == 5
               puts "Enjoy your tunes!"
               creating = false 
          end 
     end

end






















