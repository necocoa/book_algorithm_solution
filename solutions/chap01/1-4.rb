time = Time.now

ans_1 = []
1.upto(9) do |n6|
  0.upto(9) do |n5|
    0.upto(9) do |n4|
      0.upto(9) do |n3|
        0.upto(9) do |n2|
          0.upto(9) do |n1|
            1.upto(9) do |m1|
              n = [n6, n5, n4, n3, n2, n1].join.to_i
              a = n * m1
              a_str = a.to_s
              if a_str.length == 6 && a_str[0] == "6" && a_str[1] == "6"
                ans_1 << [n, m1]
              end
            end
          end
        end
      end
    end
  end
end
p ans_1.count

ans_2 = []
ans_1.each do |n, m1|
  1.upto(9) do |m2|
    a = n * m2
    a_str = a.to_s
    if a_str.length == 6 && a_str[0] == "6"
      ans_2 << [n, m1, m2]
    end
  end
end
p ans_2.count

ans_3 = []
ans_2.each do |n, m1, m2|
  1.upto(9) do |m3|
    a = n * m3
    a_str = a.to_s
    if a_str.length == 7 && a_str[2] == "6" && a_str[3] == "6" && a_str[4] == "6"
      ans_3 << [n, m1, m2, m3]
    end
  end
end
p ans_3.count

ans_4 = []
ans_3.each do |n, m1, m2, m3|
  1.upto(9) do |m4|
    a = n * m4
    a_str = a.to_s
    if a_str.length == 6 && a_str[2] == "6" && a_str[5] == "6"
      ans_4 << [n, m1, m2, m3, m4]
    end
  end
end
p ans_4.count

ans_5 = []
ans_4.each do |n, m1, m2, m3, m4|
  m = [m4, m3, m2, m1].join.to_i
  a = n * m
  a_str = a.to_s
  if a_str.length == 10 && a_str[4] == "6" && a_str[5] == "6"
    ans_5 << [n, m]
  end
end

ans_5.each do |n, m|
  puts "#{n} * #{m} = #{n * m}"
  # => 666666 * 1711 = 1140665526
end

puts "time: #{Time.now - time}秒"
