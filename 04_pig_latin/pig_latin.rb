def begins_with_vowel? word
    word.match(/^[aeiou]/) ? true : false
end

def begins_with_consonants? word, number_of_consonants
    word.match(/^[^aeiou]{#{number_of_consonants}}/) ? true : false
end

def begins_with_qu? word
    word.match(/^[q][u]/) ? true : false
end

def begins_with_consonant_preceded_by_qu? word
    word.match(/^[^aeiou][q][u]/) ? true : false
end

def translate string
    string = string.split.map do |word|
        if begins_with_vowel?(word)
            word = word + "ay"
        elsif begins_with_consonant_preceded_by_qu?(word)
            word = word[3, word.length-1] + "#{word[0, 3]}ay"
        elsif begins_with_qu?(word)
            word = word[2, word.length-1] + "#{word[0, 2]}ay"
        elsif begins_with_consonants?(word, 3)
            word = word[3, word.length-1] + "#{word[0, 3]}ay"
        elsif begins_with_consonants?(word, 2)
            word = word[2, word.length-1] + "#{word[0, 2]}ay"
        elsif !begins_with_vowel?(word)
            word = word[1, word.length-1] + "#{word[0]}ay"
        else
            word = word + "ay"
        end
    end
    string.join(" ")
end