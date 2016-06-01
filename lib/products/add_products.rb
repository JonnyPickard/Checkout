module AddProducts
  def initialize(product_list=ProductList::items)
    @product_list = product_list
  end

  def self.new_products(item)
    @product_list[item[:item_code]][[item[:product], item[:price]]]
  end
end
