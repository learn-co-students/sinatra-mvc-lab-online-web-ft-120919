class PigLatinizer

  #helper method for translate
  def is_a_vowel?(letter)
    "aeiou".include?(letter.downcase)
  end

  def piglatinize(string)
    string_array = string.split(" ")
    new_words = string_array.map do |w|
      letters = w.chars
      vowel_index = letters.index{|c| is_a_vowel?(c)}
      if vowel_index == 0
        letters << "w"
      elsif vowel_index > 0
        #move initial consonants to the end of word
        letters << letters.shift(vowel_index)
        letters.drop(vowel_index)
      end
      #add ay to the end
      letters << "ay"
      #return as a word
      letters.join
    end
    new_words.join(" ")
  end

end