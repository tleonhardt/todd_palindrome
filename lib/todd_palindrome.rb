require "todd_palindrome/version"

module ToddPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  # Returns the letters and digits in the string.
  def letters_and_digits
    self.to_s.scan(/\w/).join
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      letters_and_digits.downcase
    end
end

class String
  include ToddPalindrome
end

class Integer
  include ToddPalindrome
end