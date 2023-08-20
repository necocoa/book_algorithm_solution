def partial_sum(i, w, a, memo)
  # 末端
  if i == 0
    return w == 0
  end

  # メモをチェック
  if !memo.dig(i, w).nil?
    return memo[i][w]
  end

  # 選ばないパターン
  if partial_sum(i - 1, w, a, memo)
    return true
  end

  # 選ぶパターン
  if partial_sum(i - 1, w - a[i - 1], a, memo)
    return true
  end

  # 結果をメモ化
  memo[i] ||= {}
  memo[i][w] = false
end

def main
  a = [3, 2, 6, 5]
  n = a.size
  w = 14
  memo = {}

  if partial_sum(n, w, a, memo)
    puts "Yes"
  else
    puts "No"
  end
end

main
