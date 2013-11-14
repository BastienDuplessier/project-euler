class String

  def palindrome?
    return true if size == 1
    return false if size == 0

    half_size = (size / 2).floor
    (0...half_size).all? { |i| self[i] == self[-(i + 1)] }
  end

end
