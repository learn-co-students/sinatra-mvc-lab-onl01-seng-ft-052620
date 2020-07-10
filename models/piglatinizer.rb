class PigLatinizer

    def initialize
        # @text = text
    end

    def piglatinize(text)
        array = text.split(" ")
        new_text = []
        array.each do |word|
            new_text << get_consonants(word)
        end
        new_text.join(" ")
    end

    def get_consonants(word)
        i = 0
        vowel = false
        consonant = []
        while vowel == false
        if !word[i].match?('[aeiouAEIOU]')
            consonant << word[i]
            i += 1
        else
            vowel = true
        end
        end
        num = consonant.count
        if num > 0
        new_word = word[num.. -1] + consonant.join("") + "ay"
        elsif num == 0
            new_word = word + "way"
        end
        new_word
    end
end