hash = { a: 54, b: 18, c:3 }

# NOTICE how we access items with the symobol/colons!
p hash[:a]

p hash.keys # will return an array of keys
p hash.values # will return an array of values 

hash.each do | key, value | 
    # puts "The Class for key is #{key.class} and the value is #{value.class}"
    puts "The Key is #{key} and the Value is #{value}"
end

new_hash = { a: 1, b: 2, c: 3, d: 4 }
new_hash[:e] = 5 
p new_hash # this is how we insert another value into a hash!

