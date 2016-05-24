require_relative 'product_list'

class Checkout
  attr_reader :basket, :products

  def initialize
    @basket = []
    @products = ProductList::items
  end

  def scan item_code
    @products[item_code].nil? ? return : @basket << item_code
  end


end
