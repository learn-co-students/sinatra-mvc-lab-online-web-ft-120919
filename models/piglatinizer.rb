class PigLatinizer

    def initialize

    end

    def piglatinize (text)
        latinized = text.split(" ").each do |word|
            if word.start_with?(/[aeiouAEIOU]/)
                word << "way"
            else
                index = word.index(/[aeiou]/)
                letters = word.slice!(0...index)
                word << letters + "ay"
            end
        end
        latinized.join(" ")
    end
end