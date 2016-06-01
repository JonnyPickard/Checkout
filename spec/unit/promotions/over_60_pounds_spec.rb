require 'spec_helper'

describe Over60PoundsPromotion do

  subject(:over_sixty_pounds) { described_class.new }

  describe "#over_sixty_pounds" do
    it "should subtract ten percent from the working total when it is over sixty pounds" do
      expect(over_sixty_pounds.apply(61.00)).to eq(54.90)
    end
  end
end
