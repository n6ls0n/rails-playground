# frozen_string_literal: true

file = File.open('input.txt')

instructions = file.read

sum = 0
do_scan = true
instructions.scan(/(mul\((\d+),(\d+)\)|do\(\)|don't\(\))/) do |match, x, y|
  if match == 'do()'
    do_scan = true
  elsif match == "don't()"
    do_scan = false
  elsif do_scan
    sum += x.to_i * y.to_i
  end
end

puts sum

file.close
