class PigLatinizer 

    def initialize(text)
        @text = text 
    end 

    def break_and_shift 
        words = @text.split(" ") 
        words.map do |word| 
            if !word[0][/[aeiou]/]
                deep = word.split("")
                c = deep.shift 
                deep.push(c)
                deep.push("ay").join("")
            else 
                word.split("").push("way").join("")
            end
        end.join(" ")
    end 

end 

#will come back, couldn't find a whole list of consonant blends
#works otherwise