def hello
  "Hello!"
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  word * times
end

def start_of_word(word, length)
  word[0, length]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  sentence.split.map(&:capitalize).join(" ")
end