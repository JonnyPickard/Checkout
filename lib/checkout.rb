require_relative 'product_list'
require_relative 'promotions/promotions_calculator'

class Checkout

  def initialize(options)
    @products = options[:products]
    @promotions_calculator = options.fetch(:promotional_rules, nil)
    @basket = []
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
    return total_before_promotions if @promotions_calculator.nil?

    @promotions_calculator.apply_promotion(total_before_promotions, @basket)
  end

  private

  attr_reader :basket, :products

end
