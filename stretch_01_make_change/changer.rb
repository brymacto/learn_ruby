class Changer
  def initialize

  end


#Quarters, dimes, nickels, pennies

  def self.make_change(total)
    change = []
    total_remaining = total

    num_quarters = (total_remaining / 25).to_i
    num_quarters.times do
      change << 25
    end
    total_remaining -= (num_quarters * 25)

    num_dimes = (total_remaining / 10).to_i
    num_dimes.times do
      change << 10
    end
    total_remaining -= (num_dimes * 10)

    num_nickels = (total_remaining / 5).to_i
    num_nickels.times do
      change << 5
    end
    total_remaining -= (num_nickels * 5)

    num_pennies = (total_remaining / 1).to_i
    num_pennies.times do
      change << 1
    end
    total_remaining -= (num_pennies * 1)


    change
  end

end