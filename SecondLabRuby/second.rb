def pig_latin_converter(sentence)
  words = sentence.split(' ')

  pig_latin_words = words.map do |word|
    punctuation = word.match(/\W*$/).to_s
    word_without_punctuation = word.chomp(punctuation)

    pig_latin_word = word_without_punctuation[1..-1] + word_without_punctuation[0] + 'ay'
    
    pig_latin_word + punctuation
  end

  puts "Converted Pig Latin sentence: #{pig_latin_words.join(' ')}"
end
