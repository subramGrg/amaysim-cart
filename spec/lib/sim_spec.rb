require 'spec_helper'
require 'suparoo'

RSpec.describe Suparoo do
	describe Suparoo::ShoppingCart do
		it "initialises and shows total correctly" do
      expect(subject.to_s).to be_truthy
		end

		it "adds item to cart" do
			subject.add :ut_small
			expect(subject.to_s).to eql(24.90)
		end
	end
end
