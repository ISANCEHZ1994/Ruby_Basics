# unlike JAVA, TYPESCRIPT or C# we don't have to say what specifc datatype it is!

# PUTS is better than PRINTS
# puts "Hello World 1st";
# puts "something here under 2nd"

# print places strings all in ONE LINE
# print "should be in new line"
# print "maybe not?"
# run: ruby <FILENAME> to see why

# number = 1231223
# print number
# print number;
# print "  <== see all gross!!"

# def say_hello
#     puts " last words then returns new line: hello world";
# end;

#either way below works!
# say_hello
# say_hello()

# def sayHello(thing_to_say)
#     puts "Hello " + thing_to_say
# end

# sayHello "Israel"
# sayHello("Raul");

# String Concatenation
# first_name = "Israel"
# last_name = "Sanchez"
# puts first_name + " " + last_name;

# String Interpolation - needs to be double QUOTES("") NOT ('')
# NOTE: instead of $ like in JavaScript we use #
# puts "My first name is #{first_name} and my last name is #{last_name}";
# puts 'My first name is #{first_name} and my last name is #{last_name}';

## inside of IRB:
# "".empty? => true
# "".nil? => FALSE even though it is empty it still has some kind of value OBJECT
# nil.nil? => TRUE nil ITSELF IS nil

# when you create a variable in irb you can use <VARIABLE>.methods to see all functionalities 
# you can use on that variable

# nil is NOT nothing => nil is false otherwise equalling to another nil 

# puts "What is your first name?"
# first_name = gets.chomp

# puts "Enter a number to multiply by 2"
# input = gets.chomp
# puts input * 2

# when you enter 5 you expect 10 (5 * 2) however it returns 55 it performs STRING CONCATEINATION
# that is because gets.chomp makes a string and since you typed 5
# its basically "5" + "5" ( "5" * 2 ) => simple concate "55"
# the variable INPUT must be converted into an integer

# Correct WAY
puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2 # TO INTEGER!



