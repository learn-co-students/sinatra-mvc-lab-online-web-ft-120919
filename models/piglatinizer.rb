require 'pry'

class PigLatinizer
  
    def translate_word(string)
        if /^[aeiou]/i.match(string)
          "#{string}way"
        else
          parts = string.split(/([aeiou].*)/)
          "#{parts[1]}#{parts[0]}ay"
        end
      end
    
      def piglatinize(string)
        words = string.split(' ')
        words.map {|word| translate_word(word)}.join(' ')
      end
end