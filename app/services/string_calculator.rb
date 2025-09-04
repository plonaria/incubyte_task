class StringCalculator
	DEFAULT_DELIMITER = [',', "\n"].freeze

  def self.add(numbers)
    return 0 if numbers == ""
    return numbers.to_i if numbers.to_i.to_s == numbers

    parts = numbers.split(Regexp.union(DEFAULT_DELIMITER))
    parts.map!(&:to_s)
    parts.reject!(&:empty?)
    parts.map!(&:to_i)
    return parts.sum
  end
end