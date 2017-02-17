# Write a ruby program which prompts for and reads one line of input.
# It then echos the line, then prints it repeatedly, each time removing every
# second character. It continues until no more characters can be removed.
# Treat all characters alike; no special treatment for spaces or punctuation.
# Like this:
# tom@laptop:~/courses/ruby/asst$ ruby reduce.rb
# Please enter a line> Sandy.
# Sandy.
# Sny
# Sy
# S
#
# tom@laptop:~/courses/ruby/asst$ ruby reduce.rb
# Please enter a line> On Tuesday, Frank in the motor pool buys lunch.
# On Tuesday, Frank in the motor pool buys lunch.
# O usa,Faki h oo olby uc.
# OuaFk oob c
# Oak o
# Oko
# Oo
# O
#
# tom@laptop:~/courses/ruby/asst$ ruby reduce.rb
# Please enter a line> Those so aglow point at hues afferent
# Those so aglow point at hues afferent
# Toes go on the feet
# Te oo h et
# T ohe
# Toe
# Te
# T

class Assignment3
  def reduce_string
    puts 'Enter string to be reduced: '
    line = gets.chomp
    puts line
    counter = 0
    loop do
      if line.length != 1
        counter = 0
        reduced_line = ''
          line.each_char do |char|
            counter = counter + 1
            reduced_line << char if counter % 2 != 0
          end
          line = reduced_line
          reduced_line = ''
          puts line
      else
        break
      end
    end
  end

  Assignment3.new.reduce_string
end
