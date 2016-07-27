require 'spec_helper'

describe ('#knapsack') do
	context 'the items array only has one item' do
		it 'returns a solution based on a greedy answer (picks highest value/size item that can fit)' do
			expect(knapsack(100,[[1,1]])).to eql([100])
		end
	end

	context 'the items array has two items' do
		it 'returns a solution based on a greedy answer (picks highest value/size item that can fit)' do
			expect(knapsack(100,[[1,1],[3,4]])).to eql([1,33])
			expect(knapsack(100,[[60,80],[50,50]])).to eql([1,0])
		end
	end

	context 'the items array has three or more items' do
		it 'returns a solution based on a greedy answer (picks highest value/size item that can fit)' do
			expect(knapsack(100,[[10,10],[30,40],[56,78]])).to eql([1,1,1])
			expect(knapsack(100,[[11.2,  7.4],
                                [25.6, 17.8],
                                [51.0, 41.2],
                                [23.9, 15.6],
                                [27.8, 19.0]])).to eql ([2, 1, 1, 0, 0])
		end
	end
end