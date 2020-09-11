
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

search_for_name(name)

user = User.find_by(name: name)

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
               user.add_a_song(song_choice)
          elsif crud_choice == 2
               display_all_songs
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






















