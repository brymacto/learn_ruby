class Timer

  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(secs)
    @seconds = secs
  end

  def get_higher_level_time(lower_level_time)
    (lower_level_time/60.0).floor
  end

  def round_times
    @hours = @hours.to_s.rjust(2, "0")
    @minutes = @minutes.to_s.rjust(2, "0")
    @seconds = @seconds.to_s.rjust(2, "0")
  end

  def time_string
      @minutes = get_higher_level_time(@seconds)
      @hours = get_higher_level_time(@minutes)
      @minutes = @minutes - (@hours * 60)
      @seconds = @seconds - (@minutes * 60) - (@hours * 60 * 60)
      round_times
      "#{@hours}:#{@minutes}:#{@seconds}"
  end

end