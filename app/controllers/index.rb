get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do

  input_word_string = params[:word]
  input_word_object = Word.where(word: input_word_string).first # Word.find_by_word(input_word_string)

  anagram_objects = input_word_object.anagrams
  @anagrams = anagrams.map(&:word)

  erb :index
end

