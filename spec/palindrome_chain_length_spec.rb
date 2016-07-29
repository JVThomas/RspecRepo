require 'spec_helper'

describe '#reverse_num' do
	it 'returns the integer argument reversed' do
		expect(reverse_num(84)).to eql(48)
	end
end

describe '#palindrome_special_step' do
	it 'returns the sum of the integer argument and the reversed integer' do
		expect(palindrome_special_step(84)).to eql(132)
	end
end

describe '#palindrome_chain_length' do 
	it 'returns the number of special steps needed to obtain a palindrome' do
		expect(palindrome_chain_length(87)).to eql(4)
		expect(palindrome_chain_length(4)).to eql(0)
	end
end