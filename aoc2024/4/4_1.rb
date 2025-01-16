# frozen_string_literal: true
def check_left_right_for_xmas(array, current_index)
  before = array[([current_index - 3, 0].max)...current_index]
  after = array[(current_index + 1)..([current_index + 3, array.length - 1].min)]

  sam_before_bool = before == "SAM"
  mas_after_bool = after == "MAS"

  [sam_before_bool, mas_after_bool]
end

def check_bottom_center_for_xmas(array, current_index)
  before = array[([current_index - 3, 0].max)...current_index]
  after = array[(current_index + 1)..([current_index + 3, array.length - 1].min)]

  sam_before_bool = before == "SAM"
  mas_after_bool = after == "MAS"

  [sam_before_bool, mas_after_bool]

end

def check_bottom_left_for_xmas(array, current_index)

end

def check_bottom_right_for_xmas(array, current_index)

end

def check_top_center_for_xmas(array, current_index)

end

def check_top_left_for_xmas(array, current_index)

end

def check_top_right_for_xmas(array, current_index)

end



def
file = File.open('input.txt')
text = file.read
count = 0

text.split("\n").each_slice(4) do |line1, line2, line3, line4|
  line1.split('').each_with_index do |char, index|
    if char == 'X'
      sam_before_bool, mas_after_bool = check_left_right_for_xmas(line1, index)
      # check_bottom_center_for_xmas
      # check_bottom_left_for_xmas
      # check_bottom_right_for_xmas
      count += 1 if sam_before_bool || mas_after_bool
      # count increment for check_bottom_center_for_xmas
      # count increment for check_bottom_left_for_xmas
      # count increment for check_bottom_right_for_xmas
    end
  end

  line2.split('').each_cons(word_length) do |char, index|
    if char == 'X'
      sam_before_bool, mas_after_bool = check_left_right_for_xmas(line2, index)
      count += 1 if sam_before_bool || mas_after_bool
    end
  end

  line3.split('').each_cons(word_length) do |char, index|
    if char == 'X'
      sam_before_bool, mas_after_bool = check_left_right_for_xmas(line3, index)
      count += 1 if sam_before_bool || mas_after_bool
    end
  end

  line4.split('').each_cons(word_length) do |char, index|
    if char == 'X'
      sam_before_bool, mas_after_bool = check_left_right_for_xmas(line4, index)
      # check_top_center_for_xmas
      # check_top_left_for_xmas
      # check_top_right_for_xmas
      count += 1 if sam_before_bool || mas_after_bool
      # count increment for check_top_center_for_xmas
      # count increment for check_top_left_for_xmas
      # count increment for check_top_right_for_xmas
    end
  end
end

puts count
file.close
