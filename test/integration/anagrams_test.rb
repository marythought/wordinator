require 'test_helper'

class AnagramsTest < ActionDispatch::IntegrationTest
  def test_true_anagram
    get "/anagrams/foo&oof"
    assert_equal 200, status
    words = JSON.parse(@response.body)
    assert_equal "foo", words['word_1']
    assert_equal "oof", words['word_2']
    assert_equal true, words['anagram']
  end

  def test_false_anagram
    get "/anagrams/food&doofus"
    assert_equal 200, status
    words = JSON.parse(@response.body)
    assert_equal "food", words['word_1']
    assert_equal "doofus", words['word_2']
    assert_equal false, words['anagram']
  end
end
