class Luhn
  def self.valid?(input)
    stripped = input.gsub(/\s/, '')
    
    return false if stripped.length <= 1 || /\D/.match?(stripped)

    digits = stripped.chars.map(&:to_i).reverse

    doubled = digits.each_with_index.map do |digit, index|
      digit *= 2 if index.odd?
      digit -= 9 if digit > 9
      digit
    end

    doubled.sum % 10 == 0
  end
end
