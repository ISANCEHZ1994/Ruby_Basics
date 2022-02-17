# REMEMBER the PUTS if the work does not show!!
# ALL TESTING IS DONE - transformed into Module so now it can be used anywhere else ( think of a Class )
# in this case we are using the Crud Module inside of the crud.rb file!
# added self. to the methods so that it can be used in other files - can also type Crud. and it would still work
module Crud
    require 'bcrypt'

    puts "MODULE CRUD: ACTIVATED!"
    # users = [
    #           { username: "mashrur", password: "password1" },
    #           { username: "jack", password: "password2" },
    #           { username: "arya", password: "password3" },
    #           { username: "jonshow", password: "password4" },
    #           { username: "heisenberg", password: "password5" }
    # ]
    
    def create_hash_digest(password) 
        BCrypt::Password.create(password)
    end

    # new_password = create_hash_digest("password1")
    # puts new_password
    # puts new_password == "password1" # will be true
    # puts new_password == "password2" # will be false

    # will check if the password is correct!
    def verify_hash_digest(password)
        BCrypt::Password.new(password)
    end
    
    def create_secure_users(list_of_users)
        list_of_users.each do | user_record |
            user_record[:password] = create_hash_digest( user_record[:password] )
        end
        list_of_users
    end

    # this will create a new array of users with the hash password
    # new_users =  create_secure_users(users)
    # puts new_users

    # puts "<===============================================>"

    def authenticate_user(username, password, list_of_users)
        list_of_users.each do | user_record |
            if user_record[:username] == username && 
            verify_hash_digest(user_record[:password]) == password
            return user_record
            end
        end
        "Credentials were not correct!"
    end
end

# p authenticate_user("heisenberg","password5", new_users) # this works!
# p authenticate_user("heisenberg","password6", new_users) # this would NOT work because of password!

