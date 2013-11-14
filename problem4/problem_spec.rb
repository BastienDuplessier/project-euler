$LOAD_PATH << '.'
require 'problem4/problem'

describe "String" do
  describe "#palindrome?" do
    it "return true if is a palindrome" do
      "9009".palindrome?.should be_true
    end
    it "return false if is not a palindrome" do
      "1234".palindrome?.should be_false
    end
  end
end

describe "Problem" do
  context "for two digit numbers products" do
    it "should return the largest palindrome" do
      Problem4.with(2).solve.should be 9009
    end
  end
end
