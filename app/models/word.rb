class Word < ActiveRecord::Base
  
  def canonical
    word_string = self.word
    word_string.downcase.split('').sort.join
  end

  def anagrams
    Word.all.select do |word_obj| 
      word_obj.canonical == self.canonical
    end 
  end

  # private
end

    # pseudocode....
    # creating a word object....  (writing to database)
    # dog = Word.new(word: "dog")
    # dog.anagrams

    # acts on an instance of Word (i.e. self...)
    # returns an array of all the other words
    # (word objects, not strings) 
    # that are anagrams (i.e. have the same 
    # letters)

