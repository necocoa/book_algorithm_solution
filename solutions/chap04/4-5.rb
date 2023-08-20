# n: 入力
# cursor: 現在の値
# use: 7, 5, 3 のうちどれを使ったか
# counter: 答え
def func_753(n, cursor, use, counter)
  p "cursor: #{cursor}, use: #{use.to_s(2)}, counter: #{counter}"
  # 指定した値を超えたら終了
  if cursor > n
    return counter.ans
  end

  if use == 0b111
    counter.ans += 1
  end

  # 7 を付け加える
  func_753(n, (cursor * 10) + 7, use | 0b001, counter)

  # 5 を付け加える
  func_753(n, (cursor * 10) + 5, use | 0b010, counter)

  # 3 を付け加える
  func_753(n, (cursor * 10) + 3, use | 0b100, counter)
end

counter = Struct.new(:ans).new(0)
p func_753(10**3, 0, 0, counter)
