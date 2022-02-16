class Student
    # if we see the CLASSICAL getter and setter for first_name (below the @<VARIABLEs>)
    # it is redundant to think about repeating this for every single variable => D.R.Y. Principle
    attr_accessor :first_name, :last_name, :email, :username, :password
    # with the attr_accessor we now can have less code and still do the same work - does GETTERS and SETTERS

    # with att_reader - if you don't want to SET information but only READ it 
    # attr_reader  :password

    # INSTANCE VARIABLES − Instance variables are available across methods for any particular instance or object. 
    # That means that instance variables change from object to object. 
    # Instance variables are preceded by the at sign (@) followed by the variable name.
    # They are also known as ATTRIBUTES - because we SET it then we ACCESS it    
    @first_name
    @last_name
    @email
    @username
    @password 
 
# <================== [ Replaced By The Attribute Accessor ABOVE ] =======================>
    # NOTE: keep the equals sign CLOSE! if there is a space will throw an error
    # Classical set method
    # def first_name= (firstName) <== KEEP EQUALS SIGN CLOSE to method name
    #     @first_name = firstName
    # end

    # Classical get method
    # def first_name
    #     @first_name
    # end
# <==================================================================================>
   
    def initialize(firstName, lastName, emailI, usernameI, passwordI) 
        # I is there to show that it doesn't matter what you write as long as it is spelled the same when used        
        @first_name = firstName
        @last_name = lastName
        @email = emailI
        @username = usernameI
        @password = passwordI
    end

    def set_password
        @password = "Ra@ndomP@ssword"
    end

    # by default all CLASSES have this method:
    # the String "First Name: " will appear when file is run however if the variable first_name is not assigned
    # then it will appear blank..
    def to_s
        "First Name: #{@first_name}, 
        Last Name: #{@last_name}, 
        Email: #{@email}, 
        Username: #{@username},
        Password: #{@password}"
    end    

end

# israel = Student.new
# when we run this file we see this: #<Student:0x00000000063af128> which is the 'object' and not really readable
# going back to method to_s() => we can define HOW to read that specifc object so that we can see some data
# in theroy, below should work however it does not!

# israel.first_name = "Israel"
# puts israel

# this would give an error => undefined method `first_name=' for #<Student:0x0000000006373218> (NoMethodError)
# since the variable known as israel is trying to use a method called first_name - first_name needs to be created!

# the way this method is used WORKS HOWEVER it is not the correct notation..

# israel.first_name("Israel")

# NOTE: what we changed to the FIRST first_name method (=) 
# UPDATE: now that we took away CLASSICAL setters and getters - the ATTRIBUTE ACCESSOR does it for us
# israel.first_name = "Israel"  # FINALLY should work!!
# israel.last_name = "Sanchez"
# israel.email = "Israel.pro1994@gmail.com"
# israel.username = "Pizz@Trash"
# israel.password = "Ra@ndomP@ssword"
# israel.set_password
# puts israel.first_name
# puts israel.last_name
# puts israel.email
# puts israel.username
# puts israel.password

# if we look above at how we are setting our data to the created object
# it is a lot of repeating code and it would be annoying to keep retyping everything
# We will add the INITALIZE method ABOVE!

israel = Student.new("Israel", "Sanchez", "Israel.pro1994@gmail.com", "PizzaTrash", "Is092094$")
john = Student.new("John", "Doe", "fakeassEmail@gmail.com", "JDOVAHERRE", "123")
puts israel
puts john 
john.last_name = israel.last_name
puts "<================= [ John has been altered ] =======================>"
puts john




