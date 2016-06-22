words = ["thing", "table", "rig", "tirelessly", "apple", "school", "sweater", "automobile", "window", "electricity"]

word_index = rand(0..words.length - 1)
secret_word = words[word_index]
len = secret_word.length
wrong_guesses_remaining = 7
answer_found = false
found_letters = []
other_letters_tried = []


puts "Let's play hangman! Type in a letter to make a guess"

while(wrong_guesses_remaining > 0 && !answer_found)
  wrong_guesses_remaining -= 1
  try = gets.chomp

    if(try.to_i.to_s != try && try.to_f.to_s != try && try.length == 1)
      secret_word.each_char do |x|
        if x == try
          found_letters[x] = true
        end
      end
    else
      other_letters_tried.push(try)
    end

    else
      puts "Not a valid guess!"
    end
