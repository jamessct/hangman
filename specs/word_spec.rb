require('minitest/autorun')
require('minitest/rg')
require_relative('../word')

class WordTest < MiniTest::Test
  def setup
    @word = Word.new("facetious")
  end

  def test_get_guess
    assert_equal("_________", @word.guess)
  end

  def test_correct_guess
    assert_equal(true, @word.correct_guess?("e"))
  end

  def test_incorrect_guess
    assert_equal(false, @word.correct_guess?("g"))
  end

  def test_guess_updated
    @word.correct_guess?("e")
    assert_equal("___e_____", @word.guess)
  end

  def test_all_letters_guessed
    @word.correct_guess?("f")
    @word.correct_guess?("a")
    @word.correct_guess?("c")
    @word.correct_guess?("e")
    @word.correct_guess?("t")
    @word.correct_guess?("i")
    @word.correct_guess?("o")
    @word.correct_guess?("u")
    @word.correct_guess?("s")
    assert_equal(true, @word.all_letters_guessed?)
  end

  def test_all_letters_guessed_false
    assert_equal(false, @word.all_letters_guessed?)
  end


end