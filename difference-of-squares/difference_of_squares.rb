class Squares
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def square_of_sum
    (1..n).sum**2
  end

  def sum_of_squares
    (1..n).sum { |number| number**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
