def palindrome_chain_length(n)
  steps = 0
  while n != reverse_num(n)
    n = palindrome_special_step(n)
    steps += 1
  end
  steps
end

def reverse_num(n)
  n.to_s.split("").reverse.join("").to_i
end

def palindrome_special_step(n)
  n + reverse_num(n)
end