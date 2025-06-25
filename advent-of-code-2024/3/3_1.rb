# frozen_string_literal: true

file = File.open('input.txt')

instructions = file.read

pattern = /mul\((\d+),(\d+)\)/

sum = 0
instructions.scan(pattern).each do |x, y|
  # puts Regexp.last_match(0)
  # puts "#{x} #{y}"
  sum += x.to_i * y.to_i
end

puts sum

file.close
