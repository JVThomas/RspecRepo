def valid_braces(braces)
  char_stack = []
  brace_pairs = {'}':'{', ']':'[', ')':'('}
  brace_array = braces.split("")
  end_index = brace_array.length-1
  
  return false if brace_pairs.keys.include?(brace_array[0].to_sym) || brace_pairs.values.include?(brace_array[end_index])
  
  brace_array.each do |brace|
    char_stack << brace if (char_stack.length == 0 || brace_pairs.values.include?("#{brace}"))
    if brace_pairs.keys.include?("#{brace}".to_sym)
      return false if char_stack.last != brace_pairs["#{brace}".to_sym]
      char_stack.pop
    end
  end
  return true
end

