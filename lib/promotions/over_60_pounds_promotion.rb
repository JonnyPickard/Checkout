class Over60PoundsPromotion

  def apply(working_total)
    working_total > 60 ? (working_total *= 0.9) : working_total
  end

end
