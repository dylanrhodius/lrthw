# ex25

module Ex26

  # This function will break up words for us.
  def Ex26.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  # Sorts the words.
  def Ex26.sort_words(words)
    word = words.sort
    return word
  end

  # Prints the first word after popping it off.
  def Ex26.print_first_word(words)
    word = words.shift
    puts word
  end

  # Prints the last word after popping it off.
  def Ex26.print_last_word(words)
    word = words.pop
    puts word
  end

  # Takes in a full sentence and returns the sorted words.
  def Ex26.sort_sentence(sentence)
    words = Ex26.break_words(sentence)
    return Ex26.sort_words(words)
  end

  # Prints the first and last words of the sentence.
  def Ex26.print_first_and_last(sentence)
    words = Ex26.break_words(sentence)
    Ex26.print_first_word(words)
    Ex26.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex26.print_first_and_last_sorted(sentence)
    words = Ex26.sort_sentence(sentence)
    Ex26.print_first_word(words)
    Ex26.print_last_word(words)
  end

end

=begin

These lines need to be entered into irb

require "./ex26-25.rb"
sentence = "All good things come to those who wait."
words = Ex26.break_words(sentence)
sorted_words = Ex26.sort_words(words)
Ex26.print_first_word(words)  # "All"
Ex26.print_last_word(words)   # "wait."
Ex26.print_first_word(sorted_words) # "All"
Ex26.print_last_word(sorted_words) # "who"
sorted_words = Ex26.sort_sentence(sentence)
Ex26.print_first_and_last(sentence) # "All" "wait."
Ex26.print_first_and_last_sorted(sentence) # "All" "who"

=end
