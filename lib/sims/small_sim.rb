module SupaRoo
  class SmallSim < SupaRoo::Sim
    def initialize qty=0, &block
      self.price, self.quantity = 24.90, qty
      calculate_price &block
    end

    # find out if promotion is running
    def promotion?
      true
    end

    # if three sims are added
    # add a total of 2 sims instead
    def three_sims?
      quantity.eql? 3
    end

    def calculate_price
      if promotion? && three_sims?
        self.total = price * 2
      else
        super
      end

      # add item price to total
      yield total if block_given?
    end
  end
end
