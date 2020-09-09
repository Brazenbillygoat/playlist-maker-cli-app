class CreatePlaylist < ActiveRecord::Migration[5.1]
    def change
        create_table :playlists do |t|
            t.string :name 
            t.integer :artist_id
        end
    end
end 