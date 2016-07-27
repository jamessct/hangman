require_relative('./dictionary.rb')
require_relative('./word.rb')
require_relative('./hangman.rb')

class GameRunner

# This class contains all the logic of the game and provides the user with feedback.

  def initialize(word = nil)
    dictionary = Dictionary.new(word)
    @word = Word.new(dictionary.get_word)
    @hangman = Hangman.new
    @bad_guesses = 0
    @max_bad_guesses = @hangman.number_of_guesses
  end

  def end_game?
    return ((@bad_guesses >= @max_bad_guesses) || @word.all_letters_guessed?)
  end

  def run_game
    while !end_game?
      letter = nil
      while !letter
        print "Please guess a letter: "
        letter = gets.chomp.downcase
        letter = nil if !("a".."z").member?(letter)
      end
      if !@word.correct_guess?(letter) 
        @bad_guesses += 1
        puts "Sorry, that was wrong!"
        puts @hangman.to_s(@bad_guesses)
        puts
      else
        puts "Well done, you got one!"
        puts "#{@word.guess}"
      end
    end
    if @word.all_letters_guessed?
      puts "CONGRATS, YOU GUESSED ALL THE LETTERS!"
      puts "(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ ✧ﾟ･: *ヽ(◕ヮ◕ヽ)"
      puts "#{@word.guess}"
    else 
      puts "YOU DIE!!!"
      puts "(ಥ﹏ಥ)"
    end
  end
end

def start
  user_input = nil
  while !user_input
    puts "WELCOME TO HANGMAN"
    puts "What type of game would you like to play? Please select 1 or 2:"
    puts "1. Single player"
    puts "2. Multiplayer"
    user_input = gets.chomp
    user_input = nil if !("1".."2").member?(user_input)
  end
  if user_input == "1"
    game = GameRunner.new()
  else
    puts "OPPONENT: Please enter a word of your choice -"
    user_input_word = gets.chomp.downcase
    puts "\033[1A" + ("*" * user_input_word.length)
    game = GameRunner.new([user_input_word])
  end
  game.run_game
end

start

