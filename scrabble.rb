def scrabble_score(str)
  # This dictionary will be our reference table
  scrabble_table = { a: 1, e: 1, i: 1, o: 1, u: 1, l: 1, n: 1, s: 1, t: 1, r: 1,
                     d: 2, g: 2,
                     b: 3, c: 3, m: 3, p: 3,
                     f: 4, h: 4, v: 4, w: 4, y: 4,
                     k: 5,
                     j: 6, x: 6,
                     q: 7, z: 7,
                     " ": 0 }
  # We take the string and split it into an array of individual string characters
  # We also make sure any capital letters are converted to lowercase letters
  # Finally, we convert the string characters in our array into symbols
  parsed_string = str.downcase.split('')
                     .map { | char | char.to_sym }

  # We iterate over our array of symbols and using our dictionary, we grab the values
  # that match the keys, which contain the numeric values that will give us our final score,
  # and flatten them into a single array which is then reduced to a single value, which will
  # be the final score.                  
  result = parsed_string.map { | char | scrabble_table.values_at(char) }
                        .flatten.reduce(:+)

  # Finally, we output our result with a string that tells the user what their input adds up to
  puts "#{str} gives you a score of #{result}"
end

scrabble_score("hello hello")