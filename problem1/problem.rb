class Problem1

  def self.under(number)
    self.new(number)
  end

  def initialize(max)
    @max = max
  end

  def solve
    list.sum
  end

  private

  def list
    list = []
    (1...@max).each { |number| list << number if (number.divisable?(3,5)) }
    list
  end
end

class Integer
  def divisable?(*numbers)
    numbers.any? { |number| (self % number) == 0  }
  end
end

class Array
  def sum
    result = 0
    each { |value| result += value }
    result
  end
end