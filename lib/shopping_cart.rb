module SupaRoo
	class ShoppingCart
		attr_accessor :total

		def initialize
			self.total = 0
		end

		# determine the type of item
		# and add item to cart
		def add(sim, qty=0)
			case sim
			when :ut_small
				SmallSim.new qty do |cart|
					add_price_to cart
				end
			when :ut_medium
				MediumSim.new qty do |cart|
					add_price_to cart
				end
			when :ut_large
				LargeSim.new qty do |cart|
					add_price_to cart
				end
			end
		end

		# round of value to closest value
		def add_price_to cart
			self.total += cart
		end

		# display total price
		def to_s
			total
		end
	end
end
