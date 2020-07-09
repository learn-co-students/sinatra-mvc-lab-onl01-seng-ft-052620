class PigLatinizer
attr_accessor :words

def initialize
    @words = words
end

def piglatinize(string)
string.split(" ").map {|word| piglatinize_word(word) }.join(" ")
end
 
def vowel?(letter)
letter.downcase  =~ /[aeiou]/
end

def piglatinize_word(word)

if vowel?(word[0])
    word+"way"
else
vowel_index = word.index(/[aeiou]/)
constants = word.slice(0..vowel_index - 1)
left_over_word = word.slice(vowel_index..word.length)
left_over_word + constants + "ay"
end
end

end