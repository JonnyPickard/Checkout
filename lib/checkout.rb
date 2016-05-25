require_relative 'product_list'
require_relative 'promotions'

class Checkout

  def initialize(promotional_rules)
    @basket = []
    @products = ProductList::items
    @promotions_calculator = promotional_rules
  end

  def scan item_code
    @products[item_code].nil? ? return : @basket << item_code
  end

  def total_before_promotions
    total = 0
    @basket.each { | item_code | total += @products[item_code][:price] }
    total
  end

  def total
    @promotions_calculator.apply_promotion(total_before_promotions, @basket)
  end

  private

  attr_reader :basket, :products

end
