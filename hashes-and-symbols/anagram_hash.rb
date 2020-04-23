
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil',
  'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

def find_key_and_add_to_arr(anagrams_2, key, word)
  return anagrams_2[key] << word if anagrams_2.has_key?(key) # anagrams_2[key] = anagrams_2[key] + [word]
  anagrams_2[key] = [word]
end

anagrams = Hash.new([])

words.each do |word|
  key = word.split('').sort.join # word.chars.sort.join
  find_key_and_add_to_arr(anagrams, key, word) # anagramas[key] += [word]
end


anagrams.each_value {|value| print "#{value}\n"}
