require 'spec_helper'

describe Promotions do


  subject(:promotions) { described_class.new() }

  describe "#two_or_more_travel_card_holders?" do
    it "should correct the working total to reflect the two travel card holder discount" do
      promotions.instance_variable_set(:@basket, [001, 001])
      promotions.instance_variable_set(:@working_total, 18.50)

      expect { promotions.two_or_more_travel_card_holders }.to change { promotions.instance_variable_get(:@working_total) }.to(17.00)
    end
  end

  describe "#over_sixty_pounds?" do
    it "should subtract ten percent from the working total when it is over sixty pounds" do
      promotions.instance_variable_set(:@working_total, 61.00)

      expect { promotions.over_sixty_pounds }.to change { promotions.instance_variable_get(:@working_total) }.to(54.90)
    end
  end

  describe "#apply_promotion" do
    it "return a total of the correct promotions" do
      expect(promotions.apply_promotion(63.50, [001, 001, 002])).to eq(55.80)
    end
  end

end
