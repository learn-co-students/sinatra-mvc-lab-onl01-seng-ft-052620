class PigLatinizer
   
    def piglatinize(user_phrase)
        user_phrase.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end
    
    def piglatinize_word(word)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        if vowels.include?(word[0])
            word << "way"
        else
            vowel_index = word.downcase.index(/[aeiou]/)
            consonants = word.slice(0..vowel_index-1)
            rest_of_word = word.slice(vowel_index..word.length-1)
            rest_of_word + consonants + "ay"
        end
    end

end