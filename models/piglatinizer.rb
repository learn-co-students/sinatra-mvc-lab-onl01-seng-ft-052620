class PigLatinizer

    def piglatinize(string)
        words = string.split(' ')
        piglatinned = []
        words.each do |word|
            if get_consonant_blend(word).empty?
                word << "way"
                piglatinned << word
            else
                blend = get_consonant_blend(word)
                word.sub!("#{blend}", "")
                word << blend << "ay"
                piglatinned << word
            end
        end
        piglatinned.join(" ")
    end

    def get_consonant_blend(word)
        letters = word.split('')
        consonant_blend = []
        counter = 0
        until vowel?(letters[counter])
            consonant_blend << letters[counter]
            counter += 1
        end
        consonant_blend.join('')
    end

    def vowel?(letter)
        letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" || letter == "A" || letter == "E" || letter == "I" || letter == "O" || letter == "U"
    end

end