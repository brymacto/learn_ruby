class Temperature

@@temp_hash = {}

  def initialize(temp_hash)
    @temp_hash = temp_hash
    if @temp_hash[:f]
      @temp_hash[:c] = to_celsius
    elsif @temp_hash[:c]
      @temp_hash[:f] = to_fahrenheit
    end
    puts "//////////Temp hash: #{@temp_hash}"
  end

  def self.in_celsius(temp)
    Temperature.new({:c => temp})
  end

  def self.in_fahrenheit(temp)
    Temperature.new({:f => temp})
  end

  def to_fahrenheit
    if @temp_hash[:f]
      @temp_hash[:f]
    else
      ((@temp_hash[:c] * 9.0 / 5.0) +32.0)
    end
  end

  def to_celsius
    if @temp_hash[:c]
      @temp_hash[:c]
    else
      ((@temp_hash[:f] - 32.0) * 5.0 / 9.0)
    end
  end


    def self.to_fahrenheit
    ((@@temp_hash[:c] * 9.0 / 5.0) +32.0)
  end

  def self.to_celsius
    ((@@temp_hash[:f] - 32.0) * 5.0 / 9.0)
  end
end

class Celsius < Temperature

  def initialize(temp)
    Temperature.in_celsius(temp)
  end
end



class Fahrenheit < Temperature
  def initialize(temp)
    Temperature.in_fahrenheit(temp)
  end
end