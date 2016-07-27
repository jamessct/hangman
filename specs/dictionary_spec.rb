require('minitest/autorun')
require('minitest/rg')
require_relative('../dictionary')

class DictionaryTest < MiniTest::Test

  def test_get_random_word
    dictionary = Dictionary.new(["facetious"])
    assert_equal( "facetious",  dictionary.get_word )
  end

end