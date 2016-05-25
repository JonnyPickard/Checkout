class Promotions

  def two_or_more_travel_card_holders?
    amount = 0
    @basket.each do | item_code |
      amount += 1 if item_code == 001
    end

    @working_total -= amount * 0.75 if amount >= 2

  end
  
  private

  attr_reader :working_total, :basket
end
