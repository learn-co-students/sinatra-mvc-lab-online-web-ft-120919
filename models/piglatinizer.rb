class PigLatinizer

  def piglatinize(text)
    consonants = /[bcdfghjklmnpqrstvwxyz]+/i
    result_arr = text.split(" ").map do |word|
      prefix = word.start_with?(consonants) ? word.match(consonants)[0] : nil
      if prefix.nil?
        word << "way"
      else
        word.sub(prefix, '') << prefix + 'ay'
      end
    end
    result_arr.join(" ")
  end
end