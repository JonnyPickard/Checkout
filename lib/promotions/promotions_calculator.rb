require_relative 'promotions_list'

class Promotions

  def initialize(promotions=PromotionsList.promotions)
    @repeat_travel_card_promotion = promotions[:repeat_travel_card_promotion]
    @over_60_pounds_promotion = promotions[:over_sixty_pounds]
  end

  def apply_promotion(total_before_promotions, basket)
    @working_total = total_before_promotions
    @basket = basket

    @working_total = @repeat_travel_card_promotion.apply(@basket, @working_total)

    @working_total = @over_60_pounds_promotion.apply(@working_total)

    @working_total.round(2)
  end

  private

  attr_reader :working_total, :basket


end
