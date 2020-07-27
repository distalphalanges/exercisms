@alphabet = ('A'..'Z').to_a * 2
names = []

def generate_name
  letters = @alphabet.sample(2).join
  numbers = rand(0..999).to_s.rjust(3, "0")
  name = letters + numbers
  name
end

start = Time.now

while names.length < 26 * 26 * 1000
  name = generate_name
  name = generate_name while names.include? name
  names << name
  puts "#{name}, #{names.length}"
end

stop = Time.now

puts stop - start
