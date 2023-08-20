def partial_sum(i, w, a)
  p "i: #{i}, w: #{w}, a: #{a}"

  # 末端
  if i == 0
    return w == 0
  end

  # 選ばないパターン
  if partial_sum(i - 1, w, a)
    return true
  end

  # 選ぶパターン
  if partial_sum(i - 1, w - a[i - 1], a)
    return true
  end

  false
end

def main
  a = [3, 2, 6, 5]
  n = a.size
  w = 14

  if partial_sum(n, w, a)
    puts "Yes"
  else
    puts "No"
  end
end

main
