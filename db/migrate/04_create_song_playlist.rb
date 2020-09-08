class CreateSongPlaylist < ActiveRecord::Migration[5.1]
    def change 
        create_table :songplaylist do |t|
            t.integer :song_id
            t.integer :playlist_id 
        end 
    end 
end 