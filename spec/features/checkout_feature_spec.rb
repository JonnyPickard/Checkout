require 'spec_helper'

describe "Basket 1" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(options = { promotional_rules: Promotions.new, products: ProductList::items } )

    co.scan(001)
    co.scan(002)
    co.scan(003)

    price = co.total

    expect(price).to eq Money.new(6678, "GBP")
  end
end

describe "Basket 2" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(options = { promotional_rules: Promotions.new, products: ProductList::items } )

    co.scan(001)
    co.scan(003)
    co.scan(001)

    price = co.total

    expect(price).to eq Money.new(3695, "GBP")
  end
end

describe "Basket 3" do
  it "is expected to calculate the correct total" do
    co = Checkout.new(options = { promotional_rules: Promotions.new, products: ProductList::items } )

    co.scan(001)
    co.scan(002)
    co.scan(001)
    co.scan(003)

    price = co.total

    expect(price).to eq Money.new(7376, "GBP")
  end
end

describe "Basket 4" do
  it "is expected to calculate the correct total with no promotional_rules" do
    co = Checkout.new(options = { products: ProductList::items } )

    co.scan(001)
    co.scan(002)
    co.scan(001)
    co.scan(003)

    price = co.total

    expect(price).to eq Money.new(8345, "GBP")
  end
end
