require 'spec_helper'
require 'supa_roo'

RSpec.describe SupaRoo do
	describe SupaRoo::ShoppingCart do
		it "initialises and shows total correctly" do
      expect(subject.to_s).to be_truthy
		end

		it "adds small sim to cart" do
			subject.add :ut_small, 4
			expect(subject.to_s).to eql(99.6)
		end

		it "adds medium sim to cart" do
			subject.add :ut_medium, 4
			expect(subject.to_s).to eql(119.6)
		end

		it "adds large sim to cart" do
			subject.add :ut_large, 4
			expect(subject.to_s).to eql(159.6)
		end

		it "adds extra one GB to cart" do
			subject.add :one_gb, 1
			expect(subject.to_s).to eql(9.9)
		end
	end
end
