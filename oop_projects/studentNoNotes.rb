require_relative 'authenticate'

class Student
    
    include Crud

    attr_accessor :first_name, :last_name, :email, :username, :password
    
    @first_name
    @last_name
    @email
    @username
    @password 

    def initialize(firstName, lastName, emailI, usernameI, passwordI)        
        @first_name = firstName
        @last_name = lastName
        @email = emailI
        @username = usernameI
        @password = passwordI
    end
   
    def to_s
        "First Name: #{@first_name}, 
        Last Name: #{@last_name}, 
        Email: #{@email}, 
        Username: #{@username},
        Password: #{@password}" 
    end

end

# israel = Student.new("Israel", "Sanchez", "Israel.pro1994@gmail.com", "PizzaTrash", "Is092094$")
# john = Student.new("John", "Doe", "fakeassEmail@gmail.com", "JDOVAHERRE", "123")
# puts israel
# puts john 
# john.last_name = israel.last_name
# puts "<================= [ John has been altered ] =======================>"
# puts john

mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com","password1")
john = Student.new("John", "Doe", "john1", "john1@example.com","password2")
 
hashed_password = mashrur.create_hash_digest(mashrur.password)
 
puts hashed_password
