def reduce_interval(range_array)
  range_array = range_array.sort
  result = []
  result << range_array.shift if range_array.length != 0
  range_array.each do |range|
    range_check_and_insert(range,result)
  end
  result
end

def range_check_and_insert(range,result)
  for i in (0..result.length-1) do
    if (range[0] <=  result[i][1]) && (result[i][0] <= range[1])
      min_value = (range | result[i]).min
      max_value = (range | result[i]).max
      result[i] = [min_value, max_value]
      break;
    end
    result << range if i == result.length-1
  end
  result
end