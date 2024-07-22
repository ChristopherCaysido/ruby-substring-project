# Implement a method #substrings that takes a word as the first argument 
#and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(string,dictionary)
  words = cln_str_to_arr(string)
  selected_words = create_word_array(words,dictionary)
  substring_hash(selected_words)
end

# String -> Array
# Removes symbols, downcases and turns string into an array
def cln_str_to_arr(string)
  string.tr('^a-zA-Z0-9 ','').downcase.split(" ")
end


def create_word_array(words,dictionary)
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

def substring_hash(array)
  array.reduce(Hash.new(0)) do |subset, item|
    subset[item] += 1
    subset
  end
end


