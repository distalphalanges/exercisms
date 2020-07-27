module Complement
  def self.of_dna(rna)
    pairs = { 'G' => 'C',
              'C' => 'G',
              'T' => 'A',
              'A' => 'U' }
    dna = rna.chars.map{|n| pairs[n]}.join
  end
end
