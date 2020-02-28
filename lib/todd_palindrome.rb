require "todd_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    self.scan(/\w/).join
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      letters.downcase
    end
end
