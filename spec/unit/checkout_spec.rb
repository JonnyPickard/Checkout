require 'spec_helper'

describe Checkout do

  subject(:checkout) { described_class.new }
  item = 001

  describe "#scan" do
    it "adds the correct item code to the basket" do
      checkout.scan(item)
      expect(checkout.basket).to include(item)
    end
  end
end
