class RepeatTravelCardPromotion

  def apply(basket, working_total)
    amount = 0
    basket.each do | item_code |
      amount += 1 if item_code == 001
    end

    amount >= 2 ? (working_total -= amount * 0.75) : working_total
  end

end
