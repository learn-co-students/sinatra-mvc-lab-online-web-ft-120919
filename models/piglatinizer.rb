class PigLatinizer
  attr_reader :text

  def initialize 
  end

  def piglatinize(text)
    words = text.split(" ")

    result = words.map do |word|
      i = word.downcase.index(/a|e|i|o|u/)
      if i < 1
        word + "way"
      else
        word[i..-1] + word[0...i] + "ay"
      end
    end
    result.join(" ")
  end
end
