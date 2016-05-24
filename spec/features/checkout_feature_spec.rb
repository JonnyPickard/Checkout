require 'spec_helper'

xdescribe "Basket 1" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(promotional_rules)

    co.scan(001)
    co.scan(002)
    co.scan(003)

    price = co.total

    expect(price).to eq 66.78
  end
end

xdescribe "Basket 2" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(promotional_rules)

    co.scan(001)
    co.scan(003)
    co.scan(001)

    price = co.total

    expect(price).to eq 36.95
  end
end

xdescribe "Basket 3" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(promotional_rules)

    co.scan(001)
    co.scan(002)
    co.scan(001)
    co.scan(003)

    price = co.total

    expect(price).to eq 73.76
  end
end
