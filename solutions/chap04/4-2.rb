def tribonacci(n, memo = {})
  case n
  when 0, 1
    return 0
  when 2
    return 1
  end

  return memo[n] if memo[n]

  memo[n] = tribonacci(n - 1, memo) + tribonacci(n - 2, memo) + tribonacci(n - 3, memo)
end
