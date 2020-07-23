class Phrase
  def initialize(phrase)
    @words = phrase.scan(/\b[\w']+\b/).map(&:downcase)
  end

  def word_count
    @words.group_by(&:itself).transform_values(&:size)
  end
end
