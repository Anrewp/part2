# 4. Заполнить хеш гласными буквами,
# где значением будет являтся порядковый номер буквы в алфавите (a - 1).

vowel_hash = {}

('a'..'z').each_with_index do |char, index|
  vowel_hash[char] = index + 1 if %w[a e i o u].include?(char)
end

puts vowel_hash