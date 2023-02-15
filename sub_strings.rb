dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  
  downcase_array = string.downcase.split

  substring_array = []

  downcase_array.each do |string|
    dictionary.each do |key|
      if string.include? key
        substring_array.push(key)
      end
    end
  end

  substring_array.reduce(Hash.new(0)) do |string, amount|
    string[amount] += 1
    string
  end

end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)