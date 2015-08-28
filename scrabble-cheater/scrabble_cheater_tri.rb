def insert_word_fragment(word, root)
  return unless word

  while word.count > 0
    root = root[word.shift] ||= {}
  end

  root[:TERM] = true
end

def valid_words(letters, root)
  valid = []
  letters.uniq.each do |letter|
    next unless root[letter]
    valid.concat([[letter]]) if root[letter] && root[letter][:TERM]
    found = false
    others = letters.reject { |other_letter| found = true if !found && other_letter == letter }
    valid.concat(valid_words(others, root[letter]).map { |word| [letter, *word] })
  end

  return valid
end

tiles = ARGV.map(&:downcase)
tri = {}
File.readlines("/usr/share/dict/words")
  .map(&:chomp)
  .map(&:downcase)
  .uniq
  .map { |x| x.split('') }
  .each { |x| insert_word_fragment(x, tri) }

possibles = valid_words(tiles, tri).map(&:join)
puts possibles.sort_by(&:length)
