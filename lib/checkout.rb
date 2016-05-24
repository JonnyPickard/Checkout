require_relative 'product_list'

class Checkout

  def initialize
    @basket = []
    @products = ProductList::items
  end

  def scan item_code
    @products[item_code].nil? ? return : @basket << item_code
  end

  def total_before_promotions
    total = 0
    @basket.each { | item_code | total += @products[item_code][:price] }
    total
  end

  private

  attr_reader :basket, :products

end
