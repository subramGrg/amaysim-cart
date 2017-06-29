module Suparoo
  class ShoppingCart
    attr_accessor :total, :ut_medium

    def initialize
      self.total = 0
      self.ut_medium = false
    end

    # add item to cart
    # first determine the type of item
    def add(sim, qty=1)
      case sim
      when :ut_small
        SmallSim.new qty do |price|
          round_of_total(price)
        end
      when :ut_medium
        MediumSim.new qty do |price|
          @ut_medium = true
          round_of_total(price)
        end
      when :ut_large
        LargeSim.new qty do |price|
          round_of_total(price)
        end
      when :one_gb
        OneGb.new qty do |price|
          # free for every 2GB purchase
          if !@ut_medium
            round_of_total(price)
          end
        end
      when :promo_code
        if qty.eql? '1<3AMAYSIM'
          @total -= (0.10 * @total)
          @total = @total.round(2)
        end
      end
    end

    # round of value to closest value
    def round_of_total total
      @total = (@total + total).round(2)
    end

    # display total price
    def to_s
      total
    end
  end
end
