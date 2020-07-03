class PigLatinizer
    attr_accessor :string

    def piglatinize(input_str)
       input_str.split(' ').map { |word| piglatinize_word(word)}.join(' ')
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end

end

#For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" is added, as in the following examples:[12][13]
#"pig" = "igpay"

#When words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end when speaking or writing.[14]
# "smile" = "ilesmay"
# "string" = "ingstray"

# For words that begin with vowel sounds, the vowel is left alone, and most commonly 'yay' is added to the end. But in different parts of the world, there are different 'dialects' of sorts. Some people may add 'way' or just 'ay' or other endings. Examples are:
# "eat" = "eatyay" or "eatay"
# "omelet" = "omeletyay" or "omeletay"

