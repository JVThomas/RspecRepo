def knapsack(capacity, items)
  knapsack = []

  for i in 0..items.length-1 do
    knapsack << 0
    items[i] << items[i][1].to_f / items[i][0].to_f
  end

  knapsack_insert(capacity, items, knapsack)
end

def knapsack_insert(capacity,items,knapsack)
  while capacity >= (items.min[0])

    max_index = items.index(items.max{|a,b| a[2] <=> b[2]})
    max_value = items[max_index][1]
    max_value_size = items[max_index][0]

    if capacity >= max_value_size
      knapsack[max_index] += 1
      capacity -= max_value_size
    else
      items.delete_at(max_index)
    end
  end
  
  knapsack
end