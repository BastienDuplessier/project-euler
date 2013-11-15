class Integer
  def evenly_divisable_by?(dividers)
    dividers_arr = Array(dividers)
    dividers_arr.all? { |i| (self % i) == 0}
  end
end


class Problem5

  class << self
    alias :from :new
  end

  def initialize(start)
    @start = start
  end

  def to(_end)
    @end = _end
    self
  end

  def solve
    factor = (1..Float::INFINITY).find do |i|
      (i * @end).evenly_divisable_by?(divisors)
    end
    factor * @end
  end

  def divisors
    return @divisors if @divisors
    @divisors = Array(@start..@end).drop_while {|i| i < 2}
  end
  private :divisors

end
