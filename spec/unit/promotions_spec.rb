require 'spec_helper'

describe Promotions do


  subject(:promotions) { described_class.new() }

  describe "#two_or_more_travel_card_holders?" do
    it "should correct the working total to reflect the two travel card holder discount" do
      promotions.instance_variable_set(:@basket, [001, 001])
      promotions.instance_variable_set(:@working_total, 18.50)

      expect { promotions.two_or_more_travel_card_holders }.to change { promotions.instance_variable_get(:@working_total) }.to(17)
    end
  end

  describe "#over_sixty_pounds?" do
    it "should subtract ten percent from the working total when it is over sixty pounds" do
      promotions.instance_variable_set(:@working_total, 61.00)

      expect { promotions.over_sixty_pounds }.to change { promotions.instance_variable_get(:@working_total) }.to(54.90)
    end
  end

end
