#Author: Klaus Gerken
#Date: 31.01.2012
#A little example for a implementetion of the game Hangman in Ruby.
#Special thanks to Julian
file = File.open("eng_words_lower")
word = file.readlines.reject{|line| line[0]=="#"}.sample.strip.upcase
file.close
found = word.gsub(/./, "_")
MAX = 0

while max < 6
  count = 0
  puts found
  puts "Please enter a Letter (#{MAX}/6):"
  input = gets.chomp.upcase
  
  #check if the input is an letter. Thanks to Julian query
  unless input =~ /^[a-z]$/i
    puts "Please enter a letter (a-z, A-Z):"
    next
  end
  #is the input in the word?
  if word.index(input) != nil
    word.each_char do  |letter|
      #replace the letter from the input, with the '-' from found 
      if input == letter
        found[count] = input
      end
      count = count +1
    end
    #if all the letters from found are replaced you have won.
    if found == word
      puts "Congratiulations! The word was #{word}"
      exit
    end
  #if the letter isn't in the word, you're one closer to your defeat.
  else
    MAX += 1
  end
end

puts "Sorry, you lost! The word was #{word}"
