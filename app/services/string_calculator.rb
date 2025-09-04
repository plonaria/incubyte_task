class StringCalculator
  def self.add(numbers)
    return 0 if numbers == ""
    return numbers.to_i if numbers.to_i.to_s == numbers
  end
end