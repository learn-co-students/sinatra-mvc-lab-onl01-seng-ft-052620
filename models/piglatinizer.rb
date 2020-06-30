class PigLatinizer

    def piglatinize(text)
        sentence = text.split(' ')
        sentence.map do |word|
            if self.starting_vowel(word)
                word+'way'
            else
                split = word.split(/([aeiou].*)/)
                split[1] + split[0] + 'ay'
            end
        end.join(' ')
    end
    
    def starting_vowel(word)
        ['a','e','i','o','u'].include?(word.downcase[0])
    end

end