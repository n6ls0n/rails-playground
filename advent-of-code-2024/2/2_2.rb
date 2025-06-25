safe_reports = 0

File.open('input.txt').each_line do |line|
  list = line.split.map(&:to_i)

  def is_safe?(arr)
    is_ascending = arr == arr.sort
    is_descending = arr == arr.sort.reverse
    (is_ascending || is_descending) && arr.each_cons(2).all? { |x, y| (x - y).abs >= 1 && (x - y).abs <= 3 }
  end

  if is_safe?(list) || list.each_with_index.any? { |_, i| is_safe?(list[0...i] + list[i+1..-1]) }
    safe_reports += 1
  end
end

puts "safe_reports = #{safe_reports}"
