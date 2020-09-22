module ResistorColorDuo
  VALUES = %w[black brown red orange yellow green blue violet grey white]

  def self.value(colors)
    colors.first(2).map { |c| VALUES.index(c) }.join.to_i
  end
end
