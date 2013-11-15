$LOAD_PATH << '.'
require 'problem5/problem'

describe "Integer" do
  context "for 10" do
    describe "#evenly_divisable_by?" do

      it "should be false for 3" do
        10.evenly_divisable_by?(3).should be_false
      end

      it "should be true for 5" do
        10.evenly_divisable_by?(5).should be_true
      end

      it "should accept arrays" do
        expect { 10.evenly_divisable_by?([2,5])}.to_not raise_error
      end

    end
  end
end

describe "Problem5" do
  context "from 1 to 10" do
    it "should return the smallest solution" do
      Problem5.from(1).to(10).solve.should be(2520)
    end
  end
end