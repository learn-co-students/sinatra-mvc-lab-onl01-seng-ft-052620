
class PigLatinizer

    def piglatinize(phrase)
        words = phrase.split(" ")
        new = words.collect do |word|
            if word.start_with?(/[aeiouAEIOU]/)
                word << "way "
            else
                split_word = word.partition(/[aeiouAEIOU]/)
                new_word = "#{split_word[1]}#{split_word[2]}#{split_word[0]}ay "
            end
        end
        new.join.strip
        
    end

end