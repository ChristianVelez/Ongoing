# Write a program that determines whether a given string is a palindrome 
# Rules:  A palindrome is a word that reads the same when spelled backwards

# Example: 
# is_it_a_palindrome?("anna") => "anna"
# => "It is a palindrome!"
#
# is_it_a_palindrome?("bogus") => "sugob"
# => "It is NOT a palindrome"

def is_it_a_palindrome?(str)
  # Our input is split into an array of characters
  letters = str.split('')
  # We create an empty array to hold our reversed string characters
  new_str = []
  
  # We iterate over our original string character array to remove 
  # each indiviual character starting from the end of the string
  # We push those characters into our new_str empty array and the
  # loop stops once we have removed all the string characters from
  # the original array.
  loop do
    new_str << letters.pop
    break if letters.empty?
  end

  # We now join all our string characters to create a string
  new_str = new_str.join

  # Finally we compare the reversed string with the original string and
  # determine if it a palindrome.
  new_str == str ? "It is a palindrome!" : "It is NOT a palindrome"
end

puts is_it_a_palindrome?("ana")
