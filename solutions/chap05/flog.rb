def flog(road)
  dp = {}
  road.size.times do |i|
    # 1個目
    if i == 0
      dp[i] = 0
      next
    end

    # 2個目
    if i == 1
      dp[i] = (road[i - 1] - road[i]).abs + dp[i - 1]
      next
    end

    i1 = (road[i - 1] - road[i]).abs + dp[i - 1]
    i2 = (road[i - 2] - road[i]).abs + dp[i - 2]
    dp[i] = [i1, i2].min
  end

  dp[road.size - 1]
end

road = [2, 9, 4, 5, 1, 6, 10]
p flog(road)
