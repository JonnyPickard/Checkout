require 'spec_helper'

describe Promotions do

  subject(:promotions) { described_class.new }

  describe "#apply_promotion" do
    it "return a total of the correct promotions" do
      expect(promotions.apply_promotion(63.50, [001, 001, 002])).to eq(55.80)
    end
  end

end
