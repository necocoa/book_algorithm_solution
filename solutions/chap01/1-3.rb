ans_1 =[]

0.upto(9) do |i|
  0.upto(9) do |j|
    a = (20 + i) * j
    if a >= 100 && a.to_s[1] == "3"
      ans_1 << [i, j]
    end
  end
end

ans_1.each do |i, j|
  0.upto(9) do |k|
    a = (20+i) * (k*10+j)
    if a < 1000 && a.to_s[1] == "4"
      puts "2#{i} * #{k}#{j} = #{a}"
      # => 27 * 35 = 945
    end
  end
end
