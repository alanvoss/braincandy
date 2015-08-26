puts 1000000.times.map { Math.hypot(*2.times.map { rand * 2 - 1 }) }.reduce([0,0]) { |a,i| a[0] += 1 if i < 1; a[1] += 1; a }.map(&:to_f).reduce(:/) * 4
