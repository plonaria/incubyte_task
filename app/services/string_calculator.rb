class StringCalculator
	DEFAULT_DELIMITER = [',', "\n"].freeze

  def self.add(numbers)
    return 0 if numbers == ""
    return numbers.to_i if numbers.to_i.to_s == numbers

    # parts = numbers.split(Regexp.union(DEFAULT_DELIMITER))
    # parts.map!(&:to_s)
    # parts.reject!(&:empty?)
    # parts.map!(&:to_i)
    # return parts.sum

      # detect custom delimiter
    delimiter = /,|\n/
    if numbers.start_with?('//')
      header, numbers = numbers.split("\n", 2)
      delimiter = Regexp.new(Regexp.escape(header[2..]))
    end

    ints = numbers.split(delimiter).map(&:to_i)
    negatives = ints.select(&:negative?)
    raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    ints.sum
  end
end