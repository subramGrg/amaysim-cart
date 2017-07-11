module SupaRoo
  class OneGb < SupaRoo::Sim
    def initialize qty=0, &block
      self.price, self.quantity = 9.90, qty

      calculate_price
      yield total if block_given?
    end
  end
end
