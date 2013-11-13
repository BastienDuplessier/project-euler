class Fibonacci
  class << self
    def take(amount)
      (0...amount).collect do |i|
        hash[i]
      end
    end

    def take_under(amount)
      result = []
      (0..(Float::INFINITY)).each do |i|
        break if hash[i] >= amount
        result << hash[i]
      end
      result
    end

    def hash
      @hash ||= Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }
    end

    private :hash
  end
end

class Problem2

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
    Fibonacci.take_under(@max).select(&:even?)
  end

  private :list
end


class Array
  def sum
    inject(0) {|acc,n| acc += n }
  end
end
