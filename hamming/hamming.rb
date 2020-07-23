class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length

    0.upto(strand1.length).count { |i| strand1[i] != strand2[i] }
  end
end
