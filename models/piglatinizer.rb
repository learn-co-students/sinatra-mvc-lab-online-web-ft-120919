class PigLatinizer
attr_reader :text

def initialize(text)
    @text = text
end 
def crunchitize_me_captain
    okay = @text.split
    ok = okay.collect.each do |litre|
        letter = litre[0]
        word = litre.strip[1..-1]
        p "#{word}-#{letter}ay"
    end 
#     ok.each do |yup|
#         yup
#     end 
# #    letter = @text[0]
#    word = @text.strip[1..-1]
#    p "#{word}-#{letter}ay"
end
end 