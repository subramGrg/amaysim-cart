module SupaRoo
  class MediumSim < SupaRoo::Sim
    def initialize qty=0, &block
      self.price, self.quantity = 29.90, qty
      calculate_price &block
    end

    # find if promotion is running
    def promotion?
      false
    end

    def calculate_price
      if promotion?
        self.total = price * quantity
      else
        super
      end

      # add item price to total
      yield total if block_given?
    end
  end
end
