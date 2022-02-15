class Student
    # @ means INSTANCE VARIABLE
    @id
    @first_name
    @last_name
    @email
    @username
    @password
end

lopez = Student.new
puts lopez
israel = Student.new(1, 'Israel', 'Sanchez', "Israel.1994@gmail.com", "pizzaTrash", "Is092094$" )

puts israel
