require "test_helper"

class ToddPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ToddPalindrome::VERSION
  end

  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end
end
