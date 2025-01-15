# frozen_string_literal: true

def count_occurrences(list, value)
  list.count(value)
end

result = []
left_list = []
right_list = []

File.open('input.txt').each_line do |line|
  left, right = line.split
  left_list << left.to_i
  right_list << right.to_i
end

left_list.each do |x|
  result << (x * count_occurrences(right_list, x))
end

puts "distance = #{result.sum}"
