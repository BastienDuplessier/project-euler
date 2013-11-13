$LOAD_PATH << '.'
require 'problem3/problem'

describe "Integer" do
  describe "#prime_factors" do
    it "should return prime factors" do
      13195.prime_factors.should eq [5, 7, 13, 29]
    end
  end
end
