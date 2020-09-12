

def stock_picker(arr)
  max_difference = arr[1] - arr[0]
  index = 0
  for i in arr
    for j in arr[index..-1]
      if(j-i) > max_difference
        max_difference = j - i
        picks = [i, j]
      end
    end
    index += 1
  end
  index_best_days = picks.map do |day|
    arr.index(day)
  end
  p index_best_days
end

stock_picker([5, 10, 50, 98, 100, 56, 01, 6])