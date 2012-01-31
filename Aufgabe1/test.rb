file = File.open("eng_words_lower")
lines = file.readlines
file.close
wordArr = lines.to_a

print [rand(dictionary.size)-1].upcase

