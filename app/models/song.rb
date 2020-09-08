class Song < ActiveRecord::Base 
    has_many :songplaylist
    has_many :playlist, through: :songplaylist 
end 