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

    private

    def hash
      @hash ||= Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }
    end
  end
end
