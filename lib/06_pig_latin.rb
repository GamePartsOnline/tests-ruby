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
  
  # Trouve la première voyelle
  index = word.chars.find_index { |char| voyelles.include?(char) }
  
  # CAS SPÉCIAL : si c'est un "u" après un "q", cherche la voyelle suivante
  if index > 0 && word[index] == 'u' && word[index - 1] == 'q'
    # Cherche la voyelle APRÈS ce "qu"
    index = word.chars.find_index.with_index { |char, i| i > index && voyelles.include?(char) }
  end
  
  # Déplace les consonnes du début vers la fin + "ay"
  word[index..-1] + word[0...index] + "ay"
end