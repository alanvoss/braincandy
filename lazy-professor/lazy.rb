puts File.open('./test.txt')
  .map { |x| x.split('') }
  .reduce([]) { |a,cs| cs.each_with_index { |c,i| a[i] ||= {}; a[i][c] ||= 0; a[i][c] += 1 }; a }
  .map { |cs| cs.max_by { |k,v| v } }.map(&:first).join('')
