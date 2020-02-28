require "test_helper"

class ToddPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ToddPalindrome::VERSION
  end

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "Racecar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters_and_digits
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters_and_digits
  end

  def test_integer_non_palindrome
    refute 12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end
end
