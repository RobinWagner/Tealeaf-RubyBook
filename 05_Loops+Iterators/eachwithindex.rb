arr = [1, 2, 'test', true, 3]

arr.each_with_index do |value, position| 
  puts "At position #{position}, the value is #{value}!."
end
