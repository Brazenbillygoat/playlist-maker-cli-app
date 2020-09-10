require 'bundler/setup'
require 'active_record'
require 'sqlite3'
require 'pry'

require_relative '../app/models/user.rb'
require_relative '../app/models/songplaylist.rb'
require_relative '../app/models/song.rb'
require_relative '../app/models/playlist.rb'


ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "../../db/development.sqlite3"
)
ActiveRecord::Base.logger = nil

# ActiveRecord::Base.logger = Logger.new(STDOUT)