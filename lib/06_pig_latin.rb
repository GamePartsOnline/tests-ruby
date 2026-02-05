def translate(phrase)
  # Split la phrase en mots, traduit chacun, puis rejoins
  phrase.split.map { |word| translate_word(word) }.join(" ")
end

def translate_word(word)
  voyelles = ['a', 'e', 'i', 'o', 'u']
  
  # Si commence par une voyelle
  if voyelles.include?(word[0])
    return word + "ay"
  end
  
  # Sinon, trouve la première voyelle
  index = word.chars.find_index { |char| voyelles.include?(char) }
  
  # Déplace les consonnes du début vers la fin + "ay"
  word[index..-1] + word[0...index] + "ay"
end