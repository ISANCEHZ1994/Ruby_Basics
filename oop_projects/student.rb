class Student
    # @ means INSTANCE VARIABLE
    @id
    @first_name
    @last_name
    @email
    @username
    @password
 
    # NOTE: keep the equals sign CLOSE! if there is a space will throw an error
    def first_name= (firstName)
        @first_name = firstName
    end

    def first_name
        @first_name
    end

    # by default all CLASSES have this method:
    # the String "First Name: " will appear when file is run however if the variable first_name is not assigned
    # then it will appear blank..
    def to_s
        "First Name: #{@first_name}" 
    end

end

israel = Student.new
# when we run this file we see this: #<Student:0x00000000063af128> which is the 'object' and not really readable
# going back to method to_s() => we can define HOW to read that specifc object so that we can see some data
# in theroy, below should work however it does not!

# israel.first_name = "Israel"
# puts israel

# this would give an error => undefined method `first_name=' for #<Student:0x0000000006373218> (NoMethodError)
# since the variable known as israel is trying to use a method called first_name - first_name needs to be created!

# the way this method is used WORKS HOWEVER it is not the correct notation..
# israel.first_name("Israel")
# NOTE: what we changed to the FIRST first_name method (=)!
israel.first_name = "Israel"  # FINALLY should work!!
puts israel


# israel = Student.new(1, 'Israel', 'Sanchez', "Israel.1994@gmail.com", "pizzaTrash", "Is092094$" )

