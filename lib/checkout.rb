require_relative 'product_list'

class Checkout
  include ProductList

  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan item
    @basket << item
  end
end
