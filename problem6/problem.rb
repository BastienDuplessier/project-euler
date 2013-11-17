class Problem6

  class << self
    alias :under :new
  end

  def initialize(max)
    @max = max
  end

  def solve
    sum_square - square_sum
  end

  def square_sum
    1 + (2..@max).inject(0) { |acc, i| acc += i*i }
  end

  def sum_square
    (1..@max).inject(0) { |acc, i| acc += i  } ** 2
  end

  private :square_sum, :sum_square
end
