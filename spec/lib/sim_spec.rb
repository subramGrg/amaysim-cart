require 'spec_helper'
require 'supa_roo'

RSpec.describe SupaRoo do
	describe SupaRoo::ShoppingCart do
		it "initialises and shows total correctly" do
      expect(subject.to_s).to be_truthy
		end

		it "adds item to cart" do
			subject.add :ut_small, 4
			expect(subject.to_s).to eql(99.6)
		end
	end
end
