require_relative '../config/environment.rb'

class PigLatinizer
    attr_accessor :text

    def piglatinize(phrase)
        phrase.downcase
        words = phrase.split(" ")
        piglatinized = words.map do |word|
            if word[0].match(/[aeouiAEIOU]/)
                word += 'way'
            elsif word[1].match(/[^aeiou]/) && word[2].match(/[^aeiou]/)
                letters = word[0..2]
                word = word[3..-1]+ letters + 'ay'
            elsif word[1].match(/[^aeiou]/)
                letters = word[0..1]
                word = word[2..-1]+ letters + 'ay'
            elsif word[0].match(/[A-z]/)
                letter = word[0]
                word = word[1..-1]+ letter + 'ay'
            end
        end
        piglatinized.join(' ')
    end

end