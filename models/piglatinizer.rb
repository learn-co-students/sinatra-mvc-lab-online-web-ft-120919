class PigLatinizer
    attr_accessor :piglatinized_sentence

    def piglatinize(word)
        if word.include?(" ")
            piglatinize_sentence(word)
        else
            if word.downcase.index(/[aeiou]/) == 0
                word + "way"
            else
                vowel_index = word.index(/[aeiou]/)
                front_end = word.slice!(0..vowel_index-1)
                word + front_end +"ay"
            end
        end
    end

    def piglatinize_sentence(sentence)
        array = sentence.split(" ")
        @piglatinized_sentence = array.map do |word|
            piglatinize(word)
        end
        @piglatinized_sentence.join(" ")
    end
  

end