class Assignment1
  def get_user_input
    num_of_test_cases = get_num_of_test_cases
      num_of_test_cases.times do
        num_of_elements = get_num_of_elements
        elements_array = get_elements.take(num_of_elements)
      end
  end

  def get_num_of_test_cases
    puts "Enter number of test cases: "
    gets.to_i
  end

  def get_num_of_elements
    puts "Enter number of elements:"
    gets.to_i
  end

  def get_elements
    puts "Enter elements:"
    elements = gets.to_s
    elements.split(" ")
  end

  Assignment1.new.get_user_input
end
