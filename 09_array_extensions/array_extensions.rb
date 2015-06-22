class Array
  def sum
    # total = 0
    puts "////Self: #{self.inspect}"
    total = self.inject do |total, num|
      puts "Total before adding: #{total}, will add #{num}"
      total += num
    end
    puts "Total: #{total}"
    if total != nil
      total
    else
      0
    end
  end


  def square
    self.map do |num|
      num ** 2
    end
  end

  def square!
    self.map! do |num|
      num ** 2
    end
  end
end


