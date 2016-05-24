require 'spec_helper'

describe Checkout do

  subject(:checkout) { described_class.new }
  item = 001
  non_existant_item = 005

  describe "#scan" do
    it "adds the correct item code to the basket" do
      checkout.scan(item)
      expect(checkout.instance_variable_get(:@basket)).to include(item)
    end

    it "guards against adding non existant item codes" do
      expect { checkout.scan(non_existant_item) }.to_not change { checkout.instance_variable_get(:@basket) }
    end
  end

  describe "#total_before_promotions" do
    it "calculates the total price of the basket before promotions" do
      checkout.instance_variable_set(:@basket, [001, 002, 003])
      expect(checkout.total_before_promotions).to eq 74.20
    end
  end
end
