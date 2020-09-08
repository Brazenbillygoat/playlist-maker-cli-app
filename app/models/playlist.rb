class Playlist < ActiveRecord::Base 
    belongs_to :user 
    has_many :songplaylist
    has_many :song, through: :songplaylist
end