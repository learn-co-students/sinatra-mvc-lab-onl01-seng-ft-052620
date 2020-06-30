class PigLatinizer
  def piglatinize(phrase)
    consonants = "bcdfghjklmnpqrstvwxyz"
    consonants += consonants.upcase
    phrase.split(" ").map do |word| 
      if consonants.include?(word[0])
        hit_vowel = false
        counter = 0
        cons = ""
        while hit_vowel == false
          cons += word[counter]
          counter += 1
          hit_vowel = true unless consonants.include?(word[counter])
        end
        word[counter...word.length] + cons + "ay"
      else
        word + "way"
      end
    end.join(" ")
  end
end