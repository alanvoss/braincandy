def counts(chars)
  chars.reduce(Hash.new) { |acc,l| acc[l] ||= 0; acc[l] += 1; acc }
end

components = counts(ARGV.map(&:chomp).map(&:downcase))

words = File.readlines("/usr/share/dict/words").map(&:chomp).map(&:downcase).uniq.select do |word|
  counts(word.split('')).reject { |c, n| components[c] && components[c] >= n }.count == 0
end.sort_by(&:length)

puts words
