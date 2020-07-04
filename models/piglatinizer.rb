class PigLatinizer
    attr_accessor :word

    def piglatinize(string)
        arr = string.split(" ")
        selected = arr.map {|word| piglatinize_word(word)}
        selected.join(" ")
    end

    def piglatinize_word(word)
        vowels = "aeiou" 
        
        if vowels.include?(word[0].downcase)
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end
end