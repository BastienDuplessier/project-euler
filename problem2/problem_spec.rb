$LOAD_PATH << '.'
require 'problem2/problem'


describe "Fibonacci" do
  context "first 10 numbers" do
    it "should be first 10 fibonacci numbers" do
      Fibonacci.take(10).shoulde eq([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
    end
  end
end
