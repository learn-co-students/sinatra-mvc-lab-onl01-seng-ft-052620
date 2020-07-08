class PigLatinizer
    def piglatinize(word)
        pl = word.split(' ')
        pl.map do |word| 
            translate_word(word)
        end.join(' ')
    end

    def translate_word(word)
        if /^[aeiou]/i.match(word)
            "#{word}way"
        else
            parts = word.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
        end
    end
end

# If the word begins with a vowel sound, then we add the sound of "way" to the end of the word.