module Suparoo
  class LargeSim < Sim
    def initialize qty=0, &block
      super
      @price = 44.90

      calculate_price
      block.call @total if block_given?
    end

    def more_than_three_sims?
      @quantity > 3
    end

    def promotion?
      true
    end

    def calculate_price
      # if sims > three
      # charge promotion price
      if promotion? && more_than_three_sims?
        @total = 39.90 * @quantity
      else
        super
      end
    end
  end
end
