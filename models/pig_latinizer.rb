class PigLatinizer
  CONSONANTS = 'BCDFGHJKLMNPQRSTVWXYZ'
  VOWELS = 'AEOIU'
  COMBOS = ['PL', 'TH', 'SPR', 'PR']

  def piglatinize(word)

    word_arr = word.split(" ")
    if word_arr.length > 1
      #binding.pry
      return word_arr.map{|word| piglatinize(word)}.join(" ")
      #binding.pry 
    end #multiple words

    combo = nil

    if COMBOS.include?(word[0..1].upcase)
      combo = word[0..1]
    elsif COMBOS.include?(word[0..2].upcase)
      combo = word[0..2]
    end #if combos 

    if combo 
      len = combo.length 
      pig_word = word[len..-1] + word[0...len] + "ay"
    elsif VOWELS.include?(word[0].upcase)
      pig_word = word + "way"
    else
      pig_word = word[1..-1] + word[0] + "ay"
    end #if
    pig_word 
  end #piglatinize

end #class