# Implement a method #substrings that takes a word as the first argument 
#and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(string,dictionary)
  words = str_array(string)
  
  create_hash()
end

def str_to_array(string)
  string.tr('^a-zA-Z0-9 ','').split(" ")
end


def create_hash(array)
  array.reduce(Hash.new(0)) do |subset, item|
    subset[item] += 1
    subset
  end
end

