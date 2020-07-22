class ResistorColorDuo
  VALUES = %w(black brown red orange yellow green blue violet grey white)

  def self.value(colors)
    colors.first(2).map { |color| VALUES.index(color).to_s }.join.to_i
  end
end
