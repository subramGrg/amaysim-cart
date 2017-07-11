module SupaRoo
  class LargeSim < SupaRoo::Sim
    def initialize qty=0, &block
      self.price, self.quantity = 44.90, qty
      calculate_price &block
    end

    # find if promotion is running
    def promotion?
      true
    end

    def more_than_three_sims?
      quantity > 3
    end
    
    def calculate_price
      # if sims > three
      # charge promotion price
      if promotion? && more_than_three_sims?
        self.total = 39.90 * quantity
      else
        super
      end

      # add item price to total
      yield total if block_given?
    end
  end
end
