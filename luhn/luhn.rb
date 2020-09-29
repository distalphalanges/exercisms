class Luhn
  def self.valid?(input)
    input
      .delete(' ')
      .tap { |s| return false unless s[/\A\d\d+\z/] }
      .chars
      .map(&:to_i)
      .reverse
      .map.with_index { |d, i| i.odd? ? d * 2 : d }
      .map { |d| d > 9 ? d - 9 : d }
      .sum
      .modulo(10)
      .zero?
  end
end
