$LOAD_PATH << '.'
require 'problem6/problem'

describe "Problem6" do
  context "under 10" do
    it "should sum up square value of all numbers" do
      Problem6.under(10).send(:square_sum).should be(385)
    end

    it "should sum up all value and square it" do
      Problem6.under(10).send(:sum_square).should be(3025)
    end

    it "should make the difference between sum square and square sum" do
      Problem6.under(10).solve.should be(2640)
    end
  end
end
