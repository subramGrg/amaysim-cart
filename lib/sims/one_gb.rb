class OneGb < Sim
  def initialize qty=0, &block
    super
    @price = 9.90

    calculate_price
    block.call @total if block_given?
  end
end
