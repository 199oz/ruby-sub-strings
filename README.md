# Ruby Sub-String

This Ruby project defines a method `count_em` that counts the occurrences of specific words in a given string. The counts are based on overlapping occurrences of the words.

## Method Definition

### `count_em(str, words)`

Counts the occurrences of each word from the `words` array in the given `str`. Returns a hash with the words as keys and their respective counts as values.

#### Parameters

- `str` (String): The string in which to search for occurrences of words.
- `words` (Array of Strings): The list of words to count within `str`.

#### Returns

- `Hash`: A hash where the keys are words from the `words` array and the values are their counts in the `str`.

### Example Usage

```ruby
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