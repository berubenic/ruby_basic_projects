
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
  string_to_array = string.downcase.split(/\W/)
  matched_words = string_to_array.map do |string|
    array.select { |word| string.include? word}
  end
  matched_words.flatten!
  my_hash = {}
  my_hash.default = 0
  matched_words.each do |word|
    my_hash[word] += 1    
  end
  p my_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
