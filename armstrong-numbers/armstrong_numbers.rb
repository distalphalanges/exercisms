module ArmstrongNumbers
  def self.include?(number)
    digits = number.digits
    number_of_digits = digits.count
    number == digits.sum { |digit| digit**number_of_digits }
  end
end
