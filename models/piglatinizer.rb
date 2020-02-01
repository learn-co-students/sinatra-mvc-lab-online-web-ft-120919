require 'pry'
class PigLatinizer

    attr_reader :string

    def piglatinize(string)
        @string = string
        string = string.downcase
        
        if starts_with_vowel
            "#{string}way"
        # elsif first_two_letters_consonsants
        #     "#{string[2..-1]}#{string[0..1]}ay"
        elsif !starts_with_vowel # starts with consonant
            "#{string[1..-1]}#{string[0]}ay"
        end
    end

    # def find_of_vowels
    #     string.scan(/[aeoui]/)
    # end

    def starts_with_vowel
        if string[0] == 'A' || string[0] == 'E' || string[0] == 'I' || string[0] == 'O' || string[0] == 'U'
            true
        else
            false
        end
    end

    def first_two_letters_consonsants
        binding.pry
        if !starts_with_vowel && string[1] != 'a' || string[1] != 'e' || string[1] != 'i' || string[1] != 'o' || string[1] != 'u'
            true 
        else
            false
        end
    end

    def first_three_letters_consonsants
        # binding.pry
        # if !starts_with_vowel && string[1] != 'a' || string[1] != 'e' || string[1] != 'i' || string[1] != 'o' || string[1] != 'u'
        #     true 
        # else
        #     false
        # end
    end

    def split_up_string

    end

end