# Problem Statement
# You are given two strings, A and B. Find if there is a substring that appears
# in both A and B.
# Input Format
# Several test cases will be given to you in a single file. The first line of
# the input will contain a single integer T, the number of test cases.
# Then there will be T descriptions of the test cases. Each description contains
# two lines. The first line contains the string A and the second line contains
# the string B.
# Output Format
# For each test case, display YES (in a newline), if there is a common
# substring. Otherwise, display NO.
# Sample Input
# 2
# hello
# world
# hi
# world
#
#
# Sample Output
# YES
# NO

class Assignment2
  def get_num_of_test_cases
    puts 'Enter number of test cases: '
    gets.to_i
  end

  def evaluate_input_string
    get_num_of_test_cases.times do
      puts 'Enter two strings:'
      s1 = gets.chomp
      s2 = gets.chomp
      s1.each_char { |c| return puts 'YES' if s2.match(c) }
      puts 'NO'
    end
  end

  Assignment2.new.evaluate_input_string
end
