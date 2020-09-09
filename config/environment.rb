require 'bundler/setup'

Bundler.require
require_all "./app/models/"

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "../db/development.sqlite3"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)