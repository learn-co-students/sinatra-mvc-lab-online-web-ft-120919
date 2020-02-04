class PigLatinizer
    def piglatinize(user_input)
        if user_input.split(" ").count > 1
            piglatinize_sentence(user_input)
        else
            piglatinize_word(user_input)
        end
    end

    def piglatinize_word(word)
        if %w(a A e E i I o O u U).include?(word[0])
            word += "w"
        else
            letter_array = word.split("")
            latin_array = []
            while !%w(a A e E i I o O u U).include?(letter_array[0])
                latin_array << letter_array.shift
            end
            word = letter_array.join("") + latin_array.join("")
        end
        word += "ay"
    end

    def piglatinize_sentence(sentence)
        sentence_array = sentence.split(" ")
        latin_sentence_array = []
        sentence_array.each do |word|
            latin_sentence_array << piglatinize_word(word)
        end
        latin_sentence_array.join(" ")
    end
end