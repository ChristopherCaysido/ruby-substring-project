# Implement a method #substrings that takes a word as the first argument 
#and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,dictionary)
  words = str_to_array(string)
  selected_words = create_array(words,dictionary)
  create_hash(selected_words)
end

def str_to_array(string)
  string.tr('^a-zA-Z0-9 ','').downcase.split(" ")
end

def create_array(words,dictionary)
  # debugger
  to_hash = []
  words.each do |word|
    dictionary.each do |dict_entry|
      if word.include?(dict_entry) 
        to_hash.push(dict_entry)
      end
    end
  end
  to_hash
end

def create_hash(array)
  array.reduce(Hash.new(0)) do |subset, item|
    subset[item] += 1
    subset
  end
end

puts substrings("Howdy partner, sit down! How's it going?",dictionary)


