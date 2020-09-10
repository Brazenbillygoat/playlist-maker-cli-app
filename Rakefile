require_relative './config/environment.rb'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'


desc "Start our app console"
task :console do
  Pry.start
end

desc "Puts 'hello' to the console"
task :say_hello do
  puts "hello"
end

desc "Reset data to original seed state."
task :reset_data do
  system(rake db:drop)
  system(rake db:migrate)
  system(rake db:seed)
end 
