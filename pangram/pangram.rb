module Pangram
  def self.pangram?(sentence)
    sentence.
    downcase.
    gsub(/[^a-z]/, '').
    chars.
    uniq.
    sort == 
    ('a'..'z').to_a
  end
end
