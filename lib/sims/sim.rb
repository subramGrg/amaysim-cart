class Sim
  def initialize qty=0
    @quantity = qty
    @total = 0
  end

  def calculate_price
    @total = @price * @quantity
  end
end
