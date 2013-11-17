class PrimeNumbers < Array

  def initialize
    self[0,1] = 2,3
  end

  def at(index)
    return self[index] if self[index]

    ((self.at(index-1)+2)..(Float::INFINITY)).step(2) do |f_value|
      value = f_value.to_i

      return self[index] = value unless value.divisable_by_any?(self.under(index))
    end
  end

  def under(index)
    self[0...index]
  end
  private :under
end

class Integer

  def divisable_by_any?(numbers)
    Array(numbers).any? { |num| (self % num) == 0 }
  end

end
