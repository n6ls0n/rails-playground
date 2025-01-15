# frozen_string_literal: true

result = []
list1 = []
list2 = []

File.open('input.txt').each_line do |line|
  left, right = line.split
  list1 << left.to_i
  list2 << right.to_i
end

list1.sort!
list2.sort!

list1.zip(list2).each do |x, y|
  result << (x - y).abs
end

puts "result = #{result.inspect}"
puts "distance = #{result.sum}"
