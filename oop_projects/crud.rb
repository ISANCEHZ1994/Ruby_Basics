# there are TWO ways to import/use another file

# First Way: 
# since it is in the same directory/folder we can use:
require_relative 'authenticate'

#Second Way: 
# you would need to add the current directory to the load path THEN you require the file
# $LOAD_PATH << "."   # the dot/period (.) is the universal sign for your current directory
# require 'authenticate'

    users = [
              { username: "mashrur", password: "password1" },
              { username: "jack", password: "password2" },
              { username: "arya", password: "password3" },
              { username: "jonshow", password: "password4" },
              { username: "heisenberg", password: "password5" }
    ]

# we can now use methods from the authenticate.rb file!
p hashed_users = Crud.create_secure_users(users)





