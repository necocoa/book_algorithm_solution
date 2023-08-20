def tribonacci(n)
  case n
  when 0, 1
    return 0
  when 2
    return 1
  end

  tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3)
end
