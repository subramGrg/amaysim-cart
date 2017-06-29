module SupaRoo
  Sim = Struct.new(:quantity, :total) do
    attr_accessor :total, :price, :quantity

    def calculate_price
      self.total = price * quantity
    end
  end
end
