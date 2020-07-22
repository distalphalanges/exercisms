class Series
  def initialize(numbers)
    @numbers = numbers
  end

  def slices(size)
    raise ArgumentError if size > @numbers.size

    @numbers.chars.each_cons(size).map(&:join)
  end
end
