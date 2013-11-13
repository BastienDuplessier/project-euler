class Problem1

  class << self
    alias :under :new
  end

  def initialize(max)
    @max = max
  end

  def solve
    list.sum
  end

  def list
    (1...@max).map { |number| number if number.divisable_by_any?(3,5) }.compact
  end
  private :list

end

class Integer
  def divisable_by_any?(*numbers)
    numbers.any? { |number| (self % number) == 0  }
  end
end

class Array
  def sum
    inject(0) {|acc,n| acc += n }
  end
end
