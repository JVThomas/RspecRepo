require 'spec_helper'

describe('#reduce_interval') do
  describe('#range_check_and_insert') do
    it('adds a merged range if there is an overlap') do
      range = [4,6]
      result = [[2,13]]
      expect(range_check_and_insert(range,result)).to eql([[2,13]])
    end
    it('adds the range if no overlap is found within results') do
      result = [[2,13]]
      range = [14,18]
      expect(range_check_and_insert(range,result)).to eql([[2,13],[14,18]])
    end
  end
  describe('#reduce_interval') do
    it 'takes an array of ranges and returns an array of ranges with no overlaps' do
      range_array = [[21,54],[3,19],[52,68]]
      expect(reduce_interval(range_array)).to eql([[3,19],[21,68]])
    end
  end
end