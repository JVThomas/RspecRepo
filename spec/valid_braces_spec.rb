require 'spec_helper'

describe 'valid braces' do
	it 'returns true if the braces are valid' do
		expect(valid_braces('()')).to eql(true)
	end
	it 'returns false if the braces are invalid' do
		expect(valid_braces('{[}]')).to eql(false)
	end
end