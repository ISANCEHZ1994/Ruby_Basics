users = [
    { username: "isanchez", password: "isanchez" },
    { username: "rsanchez", password: "r@achel" },
    { username: "vlopez", password: "vlopez" }
]

def auth_user (username, password, list_of_users) 
  list_of_users.each do | user_record |    
    # take notice: NOT like a standard object - you have to use syombol/colons
    # so not user.username => in theory SHOULD work but its incorrect
    if user_record[:username] == username && user_record[:password] == password 
        puts "<=================================================>"
        puts "You have successfully logged in!"
        return user_record # in a real application it would redirect to a home page     
    end # ENDS if/else
  end # ENDS .each do
    "Credentials are not correct - please remember both username and password!"
end # ENDS auth_user

puts "Welcome to the Authenticator"
25.times { print "-" }
puts 
puts "This Program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4 
    print "Username: "
    usernameInput = gets.chomp
    print "Password: "
    passwordInput = gets.chomp
    # now that we created a method (ABOVE) we can now use it to take in both inputs (usernameInput and passwordInput) 
    # as well as user array (database) 
    # ==>  auth_user(usernameInput, passwordInput, users)     
    # the problem with auth_user is that it is returning something..
    # so if we just call it we are not storing what ever we are returning
    # we must store it in an 'authentication' variable or literally whatever you want to call it..
    authentication = auth_user(usernameInput, passwordInput, users) 
    puts authentication # when the method is finished we can show work
    puts "<=================================================>"
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == 'n'
    attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4


