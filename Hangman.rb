words = ["thing", "table", "rig", "tirelessly", "apple", "school", "sweater", "automobile", "window", "electricity"]

word_index = rand(1..words.length) - 1
secret_word = words[word_index]
secret_word_chars = secret_word.chars
p secret_word_chars
len = secret_word.length
wrong_guesses_remaining = 7
word_display = Hash.new{}

secret_word_chars.each do |x|
  word_display[x] = "_"
end

word_display.each do |a, b|
  puts b
end


puts "Let's begin hangman! Type in a letter to make a guess"
