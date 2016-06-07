require 'spec_helper'

describe Promotions do

  subject(:promotions) { described_class.new }

  describe "#apply_promotion" do
    it "return a total of the correct promotions" do
      expect(promotions.apply_promotion(Money.new(6350, "GBP"), [001, 001, 002])).to eq(Money.new(5580, "GBP"))
    end
  end

end
