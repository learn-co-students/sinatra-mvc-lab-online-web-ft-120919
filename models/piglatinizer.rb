class PigLatinizer

    def piglatinize(string)
        
        if string.split(' ').length > 1
            # binding.pry
            string = string.split
            pig_latin_string = [] 
            string.each { |word| pig_latin_string << pig_latin(word) }
            
            pig_latin_string.join(' ').tr(',', ' ')
        else
            pig_latin(string)
        end
    end

    def pig_latin(string)
        downcase_string = string.downcase
        result = nil
        if starts_with_vowel(string) && string[0].downcase == string[0]
            result = "#{string}way"
        elsif starts_with_vowel(string) && string[0].downcase != string[0]
            result = "#{string}way".capitalize
        elsif first_three_letters_consonsants(string)
            result = "#{string[3..-1]}#{string[0..2]}ay"
        elsif first_two_letters_consonsants(string)
            result = "#{string[2..-1]}#{string[0..1]}ay"
        elsif !starts_with_vowel(string) # starts with consonant
            result = "#{string[1..-1]}#{string[0]}ay"
        end
        result
    end

    def starts_with_vowel(string)
        # binding.pry
        string = string.downcase
        if string[0] == 'a' || string[0] == 'e' || string[0] == 'i' || string[0] == 'o' || string[0] == 'u'
            true
        else
            false
        end
    end

    def first_two_letters_consonsants(string)
        if !starts_with_vowel(string) && string[1] != 'a' && string[1] != 'e' && string[1] != 'i' && string[1] != 'o' && string[1] != 'u'
            true 
        else
            false
        end
        # binding.pry
    end

    def first_three_letters_consonsants(string)
        if first_two_letters_consonsants(string) && string[2] != 'a' && string[2] != 'e' && string[2] != 'i' && string[2] != 'o' && string[2] != 'u'
            true 
        else
            false
        end
    end

end