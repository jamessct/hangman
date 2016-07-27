class Word

# This class holds the word (provided by the dictionary) and provides the game with the abilty to:
# 1. Obfuscate the word
# 2. Guess letters and
# 3. Check if all letters have been guessed

  attr_reader :guess
  def initialize(word)
    @word = word
    @guess = "_"*word.length
  end

  def correct_guess?(letter)
    i = 0
    result = false
    while i < @word.length 
      if @word[i] == letter
        @guess[i] = letter
        result = true
      end
      i += 1
    end
    return result
  end

  def all_letters_guessed?
    for letter in @guess.split("")
      return false if letter == "_"
    end
    return true
  end
end


