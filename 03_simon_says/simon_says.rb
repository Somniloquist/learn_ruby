#write your code here
def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

def repeat phrase, n = 2
    result = []
    n.times do
        result << phrase
    end
    result.join(" ")
end

def start_of_word word, n
    word[0, n]
end

def first_word word
    word[0, word.index(" ")]
end

def titleize word
    word.gsub(/\b\w/) do |match|
        match.upcase
    end
end

def little_word? word
    little_words = ["and", "the", "over"]
    little_words.each do |little_word|
        if word == little_word
            return true
        end
    end

    return false
end

def titleize title
    title = title.split
    result = []
    title.each do |word|
        little_word?(word) ? result << word : result << word.capitalize
    end
    
    #capitalize the first letter
    result[0][0] = result[0][0].capitalize
    result = result.join(" ")
end