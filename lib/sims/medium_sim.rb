class MediumSim < Sim
  def initialize qty=0, &block
    super
    @price = 29.90

    calculate_price
    block.call @total if block_given?
  end

  def promotion?
    false
  end

  def calculate_price
    # check if any promotion is running
    if promotion?
      @total = @price * @quantity
    else
      super
    end
  end
end
