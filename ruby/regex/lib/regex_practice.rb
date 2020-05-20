# lib/regex_practice.rb 

class RegexPractice

  def self.starts_with_a_vowel?(word)
    # \A is a metacharacter that means match 'Start of string'
    word.match(/\A[aAeEiIoOuU]/) ? true : false
  end

end
