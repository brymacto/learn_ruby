class Changer
  def initialize
    @change = []
    @total_remaining
  end

  def self.make_change(total)
    @total_remaining = total
    @change = []
    @total_remaining = self.subtract_change(@total_remaining, 25)
    @total_remaining = self.subtract_change(@total_remaining, 10)
    @total_remaining = self.subtract_change(@total_remaining, 5)
    @total_remaining = self.subtract_change(@total_remaining, 1)
    @change
  end


  def self.subtract_change(total_remaining, coin_amount)
    total_remaining = total_remaining.to_i
    coin_amount = coin_amount.to_i
    num_coins = (total_remaining / coin_amount)
    num_coins.times do
      @change << coin_amount
    end
    total_remaining -= (num_coins * coin_amount)
  end


end