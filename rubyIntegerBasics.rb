puts 1 + 2

x = 5
y = 10
puts y / x

# Make a lot of small lines
puts "I am a line"
puts "-" * 20
puts "I am a diff line after a divider"

 # SHORTER way
 20.times { print "-" }

puts "Simple Calculator"
25.times { print "-" }
puts "Enter first number"
first_number = gets.chomp
puts "Enter second number"
second_number = gets.chomp
puts "this is the result of MULTIPLYING both numbers #{first_number.to_i * second_number.to_i}"
puts "this is the result of ADDING both numbers #{first_number.to_i + second_number.to_i}"
puts "this is the result of SUBTRACTING both numbers #{first_number.to_i - second_number.to_i}"
puts "this is the result of DIVIDING both numbers #{first_number.to_i / second_number.to_i}"

puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) find remainder"
    prompt = gets.chomp
    puts "Enter in your first number"
    first_number = gets.chomp
    puts "Enter in your second number"
    second_number = gets.chomp
    if prompt == '1'
      puts "You have chosen to multiply #{first_number} with #{second_number}"
      result = multiply(first_number, second_number)
    elsif prompt == '2'
      puts "You have chosen to divide"
      result = divide(first_number, second_number)
    elsif prompt == '3'
      puts "You have chosen to subtract"
      result = subtract(first_number, second_number)
    elsif prompt == '4'
      puts "You have chosen to find the remainder"
      result = mod(first_number, second_number)
    else
      puts "You have made an invalid choice"
    end
