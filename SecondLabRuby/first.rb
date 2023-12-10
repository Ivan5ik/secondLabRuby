def most_frequent_element(array)
  frequency = Hash.new(0)
  array.each { |element| frequency[element] += 1 }
  max_frequency = frequency.values.max

  most_frequent_elements = frequency.select { |_k, v| v == max_frequency }.keys
  puts "The most frequent element(s): #{most_frequent_elements.join(', ')}"
end
