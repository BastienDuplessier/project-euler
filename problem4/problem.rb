class String

  def palindrome?
    return true if size == 1
    return false if size == 0

    half_size = (size / 2).floor
    (0...half_size).all? { |i| self[i] == self[-(i + 1)] }
  end

end

class Array

  def first_product
    self[0] * self[1]
  end

end


class Problem4

  class << self
    alias :with :new
  end

  def initialize(digits)
    @max_fact = (10**digits) - 1
  end

  def solve
    collection = (@max_fact.downto 1).to_a.product((@max_fact.downto 1).to_a).uniq{ |e| e.sort }.sort{ |a,b| (b[0] + b[1]) <=> (a[0] + a[1]) }

    collection.find { |numbers| numbers.first_product.to_s.palindrome? }.first_product
  end

end
