WORDS = 'our_words.txt'

# for each word in above file
File.open(WORDS, 'r').each do |dictionary_word| 
  # puts dictionary_word
  Word.create({:word => dictionary_word.chomp }) 
end

