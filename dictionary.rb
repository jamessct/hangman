
class Dictionary
  
# This class is responsible for providing words to the game. That is all.
# In future this class may read words from a file (for example)
  
  def initialize(words = nil)
    if words
      @words = words
    else
      @words = [
        "array",
        "hash",
        "iterate",
        "fixnum",
        "string",
        "recursion",
        "index",
        "github",
        "variable",
        "looping",
        "branching",
        "method",
        "function",
        "terminal",
        "directory",
        "repository"
      ]
    end
  end

  def get_word
    #return @words.shuffle[0]
    return @words[rand(@words.count-1)]
  end
end