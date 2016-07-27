class Hangman

# This class provides the graphics for the UI
# Because the graphics determine the number of available guesses, this class also provides a method 'number_of_guesses'

GRAPHICS = [
" _______\n|       |\n|        \n|         \n|\n|\n",
" _______\n|       |\n|       O\n|         \n|\n|\n",
" _______\n|       |\n|       O\n|       | \n|\n|\n",
" _______\n|       |\n|       O\n|      ‾| \n|\n|\n",
" _______\n|       |\n|       O\n|      ‾|‾\n|\n|\n",
" _______\n|       |\n|       O\n|      ‾|‾\n|      / \n|\n",
" _______\n|       |\n|       O\n|      ‾|‾\n|      / \\\n|\n"]


  def initialize
  end

  def to_s(index)
    return GRAPHICS[index]
  end

  def number_of_guesses
    return GRAPHICS.count - 1
  end
end
