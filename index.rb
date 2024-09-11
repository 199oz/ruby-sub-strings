def count_em(str, words)
  word_counts = Hash.new(0)

  words.each do |word|
    word_counts[word] = str.scan(/(?=#{Regexp.escape(word)})/).count
  end

  word_counts
end

# Example usage
text = "below"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

result = count_em(text, dictionary)
puts result