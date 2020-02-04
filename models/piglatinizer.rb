#require 'pry'

class PigLatinizer

  def piglatinize(user_input)
    input = user_input.split(" ")
    input.size > 1 ? do_phrase(input) : do_word(input[0])
  end

  def do_phrase(word_array)
    word_array.map do |word|
      do_word(word)
    end.join(" ")
  end

  def do_word(word)
    new_word = ""
    if "AaEeIiOoUu".include?(word[0])
      new_word = word + "way"
    else
      letters = word.split(//)
      beginning = ""
      ending = ""
      while letters.size > 0
        if !"aeiou".include?(letters[0]) 
          beginning += letters.shift
        else
          ending += letters.join
          letters = []
        end
      end
      new_word = ending + beginning + "ay"
    end
    new_word
  end
   
end