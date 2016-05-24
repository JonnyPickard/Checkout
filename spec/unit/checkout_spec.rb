require 'spec_helper'

describe Checkout do

  subject(:checkout) { described_class.new }
  item = 001
  non_existant_item = 005

  describe "#scan" do
    it "adds the correct item code to the basket" do
      checkout.scan(item)
      expect(checkout.basket).to include(item)
    end

    it "guards against adding non existant item codes" do
      expect { checkout.scan(non_existant_item) }.to_not change { checkout.basket }
    end
  end
end
