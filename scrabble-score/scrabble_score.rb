class Scrabble
  SCORES = {
      /[AEIOULNRST]/ => 1,
      /[DG]/ => 2,
      /[BCMP]/ => 3,
      /[FHVWY]/ => 4,
      /[K]/ => 5,
      /[JX]/ => 8,
      /[QZ]/ => 10
  }

  def initialize(word)
    @word = word.to_s.upcase
  end

  def score 
    SCORES.sum do |letters, value|
      @word.scan(letters).count * value
    end 
  end

  def self.score(word)
    new(word).score
  end
end
