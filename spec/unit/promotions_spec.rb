require 'spec_helper'

describe Promotions do


  subject(:promotions) { described_class.new() }

  describe "#two_or_more_travel_card_holders?" do
    it "should correct the working total to reflect the two travel card holder discount" do
      promotions.instance_variable_set(:@basket, [001, 001])
      promotions.instance_variable_set(:@working_total, 18.50)

      expect { promotions.two_or_more_travel_card_holders? }.to change { promotions.instance_variable_get(:@working_total) }.to(17)
    end
  end

end
