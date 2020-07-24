class Clock

  def initialize(hour: 0, minute: 0)
    @time_in_minutes = (hour * 60) + minute
  end

  def to_s
    "%02i:%02i" % [ hour, minute ]
  end

  def +(other)
    Clock.new(minute: self.time_in_minutes + other.time_in_minutes)
  end

  def -(other)
    Clock.new(minute: self.time_in_minutes - other.time_in_minutes)
  end

  def ==(other)
    self.to_s == other.to_s
  end

  protected
  attr_reader :time_in_minutes

  def hour
    (time_in_minutes / 60) % 24
  end

  def minute
    time_in_minutes % 60
  end
end
