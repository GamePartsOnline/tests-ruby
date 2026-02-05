def time_string(seconds)
  # 1. Calculer les heures (combien de fois 3600 dans seconds ?)
    hours = seconds / 3600
  # 2. Calculer les minutes (avec ce qui reste)
    minutes = (seconds % 3600) / 60
  # 3. Calculer les secondes (ce qui reste encore)
    remaining_seconds = seconds % 60
  # 4. Formater chaque valeur avec 2 chiffres
    formatted_hours = hours.to_s.rjust(2, '0')
    formatted_minutes = minutes.to_s.rjust(2, '0')
    formatted_seconds = remaining_seconds.to_s.rjust(2, '0')
  # 5. Assembler avec des ":"
    "#{formatted_hours}:#{formatted_minutes}:#{formatted_seconds}"
end