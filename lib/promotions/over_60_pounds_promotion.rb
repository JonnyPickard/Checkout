class Over60PoundsPromotion

  def apply(working_total)
    working_total > Money.new(6000, "GBP") ? (working_total *= 0.9) : working_total
  end

end
