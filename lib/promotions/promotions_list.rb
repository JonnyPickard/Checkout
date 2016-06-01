require_relative 'over_60_pounds_promotion'
require_relative 'repeat_travel_card_promotion'

class PromotionsList

  def self.promotions
    {
      repeat_travel_card_promotion: RepeatTravelCardPromotion.new,
      over_sixty_pounds: Over60PoundsPromotion.new
    }
  end

end
