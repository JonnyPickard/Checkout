class Promotions

  def apply_promotion(total_before_promotions, basket)
    @basket = basket
    @working_total = total_before_promotions

    two_or_more_travel_card_holders
    over_sixty_pounds

    @working_total.round(2)
  end

  def two_or_more_travel_card_holders
    amount = 0
    @basket.each do | item_code |
      amount += 1 if item_code == 001
    end

    @working_total -= amount * 0.75 if amount >= 2
  end

  def over_sixty_pounds
    @working_total *= 0.9 if @working_total > 60
  end

  private

  attr_reader :working_total, :basket


end
