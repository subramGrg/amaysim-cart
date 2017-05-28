class SmallSim < Sim
  def initialize qty=0, &block
    super
    @price = 24.90

    calculate_price
    block.call @total if block_given?
  end

  def promotion?
    true
  end

  def three_sims?
    @quantity.eql? 3
  end

  def calculate_price
    # if three sims are added
    # add total of 2 sims instead
    # as per the promotion
    if promotion? && three_sims?
      @total = @price * 2
    else
      super
    end
  end
end
