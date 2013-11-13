$LOAD_PATH << '.'
require 'problem2/problem'


describe "Fibonacci" do
  context "first 10 numbers" do
    it "should be first 10 fibonacci numbers" do
      Fibonacci.take(10).should eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
    end

    it "should take all number under 10" do
      Fibonacci.take_under(10).should eq([0, 1, 1, 2, 3, 5, 8])
    end
  end
end

describe "Problem 2" do
  context "under 10" do
    it "should list even fibonacci numbers under 10" do
      Problem2.under(10).send(:list).should eq([2, 8])
    end

    it "shoule sum even fibonacci numbers under 10" do
      Problem2.under(10).solve.should be(10)
    end
  end
end