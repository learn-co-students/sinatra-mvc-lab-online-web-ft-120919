class PigLatinizer
    attr_reader :text

    def piglatinize(text)

        @text = text

        words = @text.split

        new_words = words.collect do |word|

            if word.start_with?(/[aeiouAEIOU]/)
                letters = word.split('')
                new_word = letters.push('way').join
            else
                cons = []
                letters = word.split('')
                while !!letters.first.index(/[^aeiouAEIOU]/)
                    con = letters.shift
                    cons.push(con)
                end
                cons = cons.join + 'ay'
                new_word = letters.push(cons).join
            end

            new_word

        end

        new_words.join(' ')
    end

end

