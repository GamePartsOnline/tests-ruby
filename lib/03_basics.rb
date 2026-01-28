def who_is_bigger(a, b, c)
  # 1. Si un paramètre est nil, retourne "nil detected"
  if a.nil? || b.nil? || c.nil?
    return "nil detected"
  end

  # 2. Compare les 3 nombres
  if a > b && a > c
    return "a is bigger"
  elsif b > a && b > c
    return "b is bigger"
  else
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.delete("LTA")
end

def array_42(array)
  array.include?(42)
end

def magic_array(array)
  array
    .flatten                    # Aplatit
    .reject { |n| n % 3 == 0 }  # Enlève multiples de 3
    .map { |n| n * 2 }          # Multiplie par 2
    .uniq                       # Supprime doublons
    .sort                       # Trie
end