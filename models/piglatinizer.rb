class PigLatinizer
    def piglatinize(string)
        words = string.split(" ")
        p_sentence = []
        words.each do |word|
            char_array = word.downcase.split("")
            vowels = ['a','e','i','o','u']
            p_latin = ""
            if vowels.include?(char_array[0])
                p_latin = word+"way"
            else
                char_array.each_with_index do |char, index|
                    if vowels.include?(char)
                        p_latin = word.slice(index,word.length)+word.slice(0,index)+"ay"
                        break
                    end
                end
            end
            p_sentence << p_latin
        end
        if p_sentence.length > 1
            p_sentence.join(" ")
        else
            p_sentence.join
        end
    end
end