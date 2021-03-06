$LOAD_PATH << '.'
require 'problem1/problem'


describe "Problem 1" do
  context "Numbers under 10" do

    it "should list multiple of 3 and 5" do
      Problem1.under(10).send(:list).should eql([3,5,6,9])
    end

    it "sum should be 23" do
      Problem1.under(10).solve.should be(23)
    end

  end
end