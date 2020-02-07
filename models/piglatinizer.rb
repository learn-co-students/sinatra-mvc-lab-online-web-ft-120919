#require 'pry'

class PigLatinizer

attr_reader :text

def initialize

end

def piglatinize(text)
  text.split(/ /).map do
    |word| self.convert(word)
  end.join(" ")

    #binding.pry
end
# 1. transferring the initial consonant or consonant blend (for example, "ch" or "str")
# of each word to the end of the word along with the syllable "-ay".
# 2. If the word begins with a vowel sound, then we add the sound of "way" to the end of the word.
def convert (str)
# REFERENCE : Using logic from this source https://stackoverflow.com/questions/13498688/pig-latin-method-translation
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  lstr = str.downcase
  if vowels.include?(lstr[0])
    str + 'way'
  elsif consonants.include?(lstr[0]) && consonants.include?(lstr[1]) && consonants.include?(lstr[2])
    str[3..-1] + str[0..2] + 'ay'
  elsif consonants.include?(lstr[0]) && consonants.include?(lstr[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(lstr[0])
    str[1..-1] + str[0] + 'ay'
  else
    str # return unchanged
  end
end

end

#p = PigLatinizer.new
#p.piglatinize("hello")