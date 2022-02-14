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

new_hash[:c] = "Israel"
new_hash[:a] = "Sanchez"
p new_hash.select { | k, v | v.is_a?(String) }
# the select will return only the values where the value is a String

# we are searching thru each key and checking to see if the vaule is a String
# if it is we are deleting the key which means we will not be able to use the value
p new_hash.each { | k, v | new_hash.delete(k) if v.is_a?(String) }


myhash = {a: 1, b: 2, c: 3, d: 4}
myhash[:name] = "Mashrur"
myhash.delete(:d)

# To iterate through a hash using .each method and print out both key and value in friendly format:
p myhash.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}" }

# To iterate through and delete a items from a hash based on a condition (in the condition below if the value is greater than 3:
p myhash.each { |k, v| myhash.delete(k) if v > 3 }

# Use select method to display items only if value of the item is odd
myhash.select { |k, v| v.odd? }

