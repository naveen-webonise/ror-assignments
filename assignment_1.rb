class Assignment1
  def get_user_input
    num_of_test_cases = get_num_of_test_cases
      num_of_test_cases.times do
        num_of_elements = get_num_of_elements
        elements_array = get_elements.take(num_of_elements)
        puts isSumEqual?(elements_array) ?  'YES' : 'NO'
      end
  end

  def get_num_of_test_cases
    puts 'Enter number of test cases: '
    gets.to_i
  end

  def get_num_of_elements
    puts 'Enter number of elements:'
    gets.to_i
  end

  def get_elements
    puts 'Enter elements:'
    elements = gets.to_s
    elements.split(' ')
  end

  def isSumEqual?(elements_array)
    left_index = 0
    right_index = elements_array.length - 1
    left_sum = elements_array[left_index]
    right_sum = elements_array[right_index]
      loop do
        unless left_index == right_index
          if left_sum < right_sum
            left_index = left_index + 1
            left_sum = left_sum + elements_array[left_index]
          else
            right_index = right_index - 1
            right_sum = right_sum + elements_array[right_index]
          end
        else
          break
        end
      end
      right_sum == left_sum
    end

  Assignment1.new.get_user_input
end
