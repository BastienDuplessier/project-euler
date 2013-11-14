class String

  def palindrome?
    return true if size == 1
    return false if size == 0

    half_size = (size / 2).floor
    (0...half_size).all? { |i| self[i] == self[-(i + 1)] }
  end

end

class Problem4

  class << self
    alias :with :new
  end

  def initialize(digits)
    @digits = digits
  end

  def solve
    solution = []
    solution << max_fact.downto(1).find do |first_fact|
      solution << max_fact.downto(1).find do |second_fact|
        (first_fact * second_fact).to_s.palindrome?
      end
    end

    return (solution[0] * solution[1])
  end

  def max_fact
    (10**@digits) - 1
  end
end
