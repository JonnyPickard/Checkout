require 'money'

module ProductList
  def self.items
    {
      001 => { product: "Travel Card Holder", price: Money.new(925, "GBP") },
      002 => { product: "Personalised cufflinks", price: Money.new(4500, "GBP") },
      003 => { product: "Kids T-shirt", price: Money.new(1995, "GBP") }
    }
  end
end
