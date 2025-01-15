safe_reports = 0

File.open('input.txt').each_line do |line|
  list = line.split.map(&:to_i)
  is_ascending = list == list.sort
  is_descending = list == list.sort.reverse
  if (is_ascending || is_descending) && list.each_cons(2).all? { |x, y| (x - y).abs >= 1 && (x - y).abs <= 3 }
    safe_reports += 1
  end
end

puts "safe_reports = #{safe_reports}"
