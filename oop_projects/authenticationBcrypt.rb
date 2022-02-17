# AUTHENTICATION !!!
require 'bcrypt'

# my_password = BCrypt::Password.create("my password") <== already used this!
  #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
#   puts my_password

# instead of using CREATE we are using NEW
# my_password = BCrypt::Password.new('$2a$12$U2EWMxjvGIFWoXcFhdBL2uFGkE9yEbV1EMUwaPaBuHs2mW22wnbMe')
# puts my_password == "my password" # will return true!

# even when we use the same string - the objects created are all different!
my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password  # $2a$12$jFqVIxuUEGPAEVZsFOtaluE2JT3Hpr4f6DJ/rkG3ldS6OScybD5me
puts my_password_1 # $2a$12$HWA/pV1i0Pndu7611AJHM.uwDnHjBAZjIMO46M3UyC5n7yYYyEQla
puts my_password_2 # $2a$12$9UWQtbzl0LyD1rI7FmcxX.WccxA/flMt7UwSHJjpRVaOKMtxiRGTO

# https://www.rubydoc.info/gems/bcrypt-ruby/3.1.5 - How to use bcrypt-ruby in general

