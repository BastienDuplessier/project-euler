class Integer

  def prime_factors
    return [] if self < 2
    return [self] if self.prime?
    div = (2..(Math.sqrt(self).floor)).select(&:prime?).find {|prime| (self % prime) == 0}

    return (self/div).floor.prime_factors.unshift(div)
  end

  def prime?
    return false if self < 2
    return true if self == 2
    (2..(Math.sqrt(self).floor)).all? do |number|
      (self % number) != 0
    end
  end

end