file = File.open("eng_words_lower")
lines = file.readlines
file.close
wordArr = lines.to_a


word = wordArr[rand(wordArr.size)-1].upcase
found = word.gsub(/./, "_")
puts word

for i in 0..6 do
  puts found.gsub(/([A-Z_])/, "\\1 ")
  input = gets.chomp.upcase
  if word.index(input) != nil
    for i in 0...word.size
      if word[i].chr == input
        found[i] = input
      end
      puts found
    end
  end
end

