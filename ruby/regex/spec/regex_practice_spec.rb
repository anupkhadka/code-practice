# spec/regex_practice_spec.rb

require "regex_practice"

describe RegexPractice do

  describe ".starts_with_a_vowel?" do
    context "given a string that starts with a vowel" do
      it "returns true" do
        expect(RegexPractice.starts_with_a_vowel?("Apple Sauce")).to eq(true)
      end
    end
    context "given a string that doesn't start with a vowel" do
      it "returns false" do
        expect(RegexPractice.starts_with_a_vowel?("Sauce Apple")).to eq(false)
      end
    end
  end

end
