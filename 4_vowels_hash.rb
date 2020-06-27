# 4. Заполнить хеш гласными буквами,
# где значением будет являтся порядковый номер буквы в алфавите (a - 1).
VOWELS = %w[a e i o u]

vowel_hash = {}

('a'..'z').each.with_index(1) { |char, index| vowel_hash[char] = index if VOWELS.include?(char) }

puts vowel_hash
