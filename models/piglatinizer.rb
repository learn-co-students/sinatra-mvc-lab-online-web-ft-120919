class PigLatinizer 

    def piglatinize(string)
        string.split(' ').map { |word| pig_word(word) }.join(' ')
    end

    def pig_word(word)
        #find 1st vowel of word
        first_vowel_index = word.downcase.index(/[aeiou]/)
        last_index = word.length - 1
        result = nil
        if first_vowel_index == 0 || word.length == 1
          #adds "w" to end of string
          result = "#{word}w"
        else
          #get prefix and puts it at the end of it
          prefix = word[0..(first_vowel_index - 1)]
          suffix = word[first_vowel_index..last_index]
          result = "#{suffix}#{prefix}"
        end
        # add 'ay' to it
        "#{result}ay"
      end

end 