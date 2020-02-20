class PigLatinizer
    attr_reader :text

    def initialize

    end


    def piglatinize(text)
        words = text.split
        words.collect! do |word|
            letters = word.split(//)
            vowels = ["a","e","i","o","u","A","E","I","O","U"]
            
            if vowels.include?(letters.first)
                letters << "way"
                letters.join
            elsif !vowels.include?(letters[2]) && !vowels.include?(letters[1])
                letters << letters.shift
                letters << letters.shift
                letters << letters.shift
                letters << "ay"
                letters.join
            elsif !vowels.include?(letters[1])
                letters << letters.shift
                letters << letters.shift
                letters << "ay"
                letters.join
            else
                letters << letters.shift
                letters << "ay"
                letters.join
            end
        end
        words.join(" ")
    end
end