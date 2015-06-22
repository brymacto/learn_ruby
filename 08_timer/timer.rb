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




  def time_string
    if @seconds <= 60
      "00:00:#{seconds}"
    elsif @seconds <= 3600
      @minutes = (@seconds/60.0).floor.to_s.rjust(2, "0")
      puts "@minutes: #{@minutes}"
      # @hours =


    end
  end

end