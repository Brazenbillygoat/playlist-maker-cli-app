


# Objectives

Allow users to create a playlist that persists in the database.

### Instructions

1. Navigate to the directory where you would like this file to exist. 

2. Run `git clone` followed by the url, which can be found if you click on the green button near the top right of this repository.

3. Navigate into your newly cloned directory.

4. Run `bundle install`, this will create a "Gemfile.lock" file, with the specific versions of each Ruby gem listed.

5. Run `rake -T`, this will generate a list of available commands to interface with your data base. 

6. Run the `rake db:migrate` command to create the database, it's tables, and associated columns. 

    -  You will now see a "schema.rb" file inside of your "db" directory.

7. Run the `rake db:seed` command to populate the database with arbitrary data. 

8. To start the program run `ruby run.rb`.

User will be given a number of options, listed in numerical order. User will then input a number which corresponds to the option they would like to select. 

Options include creating a playlist, adding songs, deleting songs, and viewing the playlists. 



