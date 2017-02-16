# Problem Statement
# Watson gives Sherlock an array A of length N. Then he asks him to determine
# if there exists an element in the array such that the sum of the elements on
# its left is equal to the sum of the elements on its right.
# If there are no elements to the left/right, then the sum is considered to be
# zero. Formally, find an i, such that, A1+A2...Ai-1 =Ai+1+Ai+2...AN.
# Input Format: The first line contains T, the number of test cases.
# For each test case, the first line contains N, the number of elements
# in the array A. The second line for each test case contains N space-separated
# integers, denoting the array A.
# Output Format: For each test case print YES if there exists an element in
# the array, such that the sum of the elements on its left is equal to the sum of
# the elements on its right; otherwise print NO.
#
# Sample Input
# 2
# 3
# 1 2 3
# 4
# 1 2 3 3
#
#
# Sample Output
# NO
# YES


class Assignment1
  def determine_array_equality
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
    left_sum = elements_array[left_index].to_i
    right_sum = elements_array[right_index].to_i
      loop do
        unless left_index == right_index
          if left_sum < right_sum
            left_index = left_index + 1
            left_sum = left_sum + elements_array[left_index].to_i
          else
            right_index = right_index - 1
            right_sum = right_sum + elements_array[right_index].to_i
          end
        else
          break
        end
      end
      right_sum == left_sum
    end

  Assignment1.new.determine_array_equality
end
