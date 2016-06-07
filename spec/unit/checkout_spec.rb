require 'spec_helper'

describe Checkout do

  subject(:checkout) { described_class.new(promotions: promotions, products: ProductList::items) }

  let(:promotions) { instance_spy("Promotions") }

  describe "#scan" do
    it "adds the correct item code to the basket" do
      checkout.scan(001)

      expect(checkout.instance_variable_get(:@basket)).to include(001)
    end

    it "guards against adding non existant item codes" do
      expect { checkout.scan(005) }.to_not change { checkout.instance_variable_get(:@basket) }
    end
  end

  describe "#total_before_promotions" do
    it "calculates the total price of the basket before promotions" do
      checkout.instance_variable_set(:@basket, [001, 002, 003])

      expect(checkout.total_before_promotions).to eq Money.new(7420, "GBP")
    end
  end
end
