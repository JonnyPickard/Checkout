require 'spec_helper'

describe RepeatTravelCardPromotion do
  
  subject(:repeat_travel_card_promotion) { described_class.new }

  describe "#two_or_more_travel_card_holders" do
    it "should correct the working total to reflect the two travel card holder discount" do
      expect(repeat_travel_card_promotion.apply([001, 001], 18.50)).to eq(17.00)
    end
  end
end
