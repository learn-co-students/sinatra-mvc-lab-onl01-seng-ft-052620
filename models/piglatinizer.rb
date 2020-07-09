class PigLatinizer
   
    def piglatinize(user_phrase)
        # binding.pry
        @new_word = user_phrase.split("")
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        if vowels.include?(@new_word[0])
            latinized_word = begins_with_vowel.join("")
        else
            latinized_word = begins_with_consonant.join("")
        end
        latinized_word
    end


    def begins_with_vowel
        vowel_word = @new_word << "way"
    end

    def begins_with_consonant
        if @new_word[0] == "p" && @new_word[1] =="l"
            pl = @new_word[0, 2].join("")
            spliced_word = @new_word[2..-1]
            spliced_word << pl + "ay"

        elsif @new_word[0] == "t" && @new_word[1] =="h"
            th = @new_word[0, 2].join("")
            spliced_word = @new_word [2..-1]
            spliced_word << th + "ay"

        elsif @new_word[0] == "s" && @new_word[1] == "p" && @new_word[2] == "r"
            spr = @new_word[0, 3].join("")
            spliced_word = @new_word[3..-1]
            spliced_word << spr + "ay"

        elsif @new_word[0] == "p" && @new_word[1] == "r"
            pr = @new_word[0, 2].join("")
            spliced_word = @new_word[2..-1]
            spliced_word << pr + "ay"

        elsif @new_word[0] == "q" && @new_word[1] == "u"
            qu = @new_word[0, 2].join("")
            spliced_word = @new_word[2..-1]
            spliced_word << qu + "ay"

        else
            first_letter = @new_word[0]
            spliced_word = @new_word[1..-1]
            spliced_word << first_letter + "ay"

        end
            
    end

end