class StringCalculator
  def self.add(numbers)
    return 0 if numbers == ""
    return numbers.to_i if numbers.to_i.to_s == numbers

    if numbers.include?(',')
      a, b = numbers.split(',', 2)
      return a.to_i + b.to_i
    end

    return numbers.to_i
  end
end