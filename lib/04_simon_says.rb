def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  ([word] * times).join(" ")
end

def start_of_word(word, length)
  word[0, length]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  little_words = ["and", "or", "the", "to", "a", "but"]  # Enlève "over"
  
  sentence.split.map.with_index do |word, index|
    if index == 0
      word.capitalize
    elsif little_words.include?(word.downcase)
      word.downcase
    else
      word.capitalize
    end
  end.join(" ")
end