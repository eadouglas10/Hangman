words = ["thing", "table", "rig", "tirelessly", "apple", "school", "sweater", "automobile", "window", "electricity"]

word_index = rand(0..words.length - 1)
secret_word = words[word_index]
word_chars = secret_word.chars
len = secret_word.length
wrong_guesses_remaining = 7
answer_found = false
found_letters = []
other_letters_tried = []


puts "Let's play hangman! The word has #{len} letters. Type in a letter to make a guess."

while(wrong_guesses_remaining > 0 && !answer_found)
  try = gets.chomp
  found_a_letter = false
  characters_found = 0
  answer_found = true

    if(try.to_i.to_s != try && try.to_f.to_s != try && try.length == 1)#single letter entered
      for x in 0...len
        if word_chars[x] == try
          found_letters[x] = true
          found_a_letter = true
          characters_found += 1
        end
      end

      puts ""
      print "The letter " + try + " occurs " + characters_found.to_s + " time"
      if characters_found == 1
        puts "s."
      else
        puts "."
      end

      if found_a_letter == false
        if !other_letters_tried.include?(try)
          other_letters_tried << try
        end
        wrong_guesses_remaining -= 1
        puts "You have " + wrong_guesses_remaining.to_s + " wrong guesses remaining."
      end

    else
      puts "Not a valid guess!"
      wrong_guesses_remaining -= 1
    end

    for x in 0...len
      if found_letters[x]
        print word_chars[x]
      else
        print "_"
        answer_found = false
      end
    end

    puts ""
    print "You have ruled out these letters: "
    for x in 0...other_letters_tried.length
      print other_letters_tried[x] + " "
    end
    puts ""
    puts "Try another one!"
end

if answer_found
  puts "That's it!"
end
