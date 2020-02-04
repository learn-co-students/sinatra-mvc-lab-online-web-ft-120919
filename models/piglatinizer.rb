require 'pry'
class PigLatinizer

    attr_reader :string
    def initialize
        @string = string
    end


    def piglatinize(x)
        result = []
        vowels = ["a","e","i","o","u","A","E","I","O","U"]
        x = x.split(" ")
        for i in x
            if vowels.include?(i[0])
              result << i + "way"
            elsif vowels.include?(i[1])
             first_letter = i[0]
              i = i.delete first_letter
              result <<  i+first_letter+'ay'
            elsif vowels.include?(i[2])
              first_letter = i[0]
              second_letter = i[1]
              i = i.delete i[0]
              i = i.delete i[0]
          
              result <<  i+first_letter+second_letter +'ay'          
            else
              first_letter = i[0]
              second_letter = i[1]
              third_letter = i[2]
              i = i.delete i[0]
              i = i.delete i[0]
              i = i.delete i[0]
          
              result <<  i+first_letter+second_letter+third_letter+'ay'
            end
          end
        result.join(" ")
    end
    
end