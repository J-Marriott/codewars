=begin

In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

Example:

high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"
Notes:

All numbers are valid Int32, no need to validate them.
There will always be at least one number in the input string.
Output string must be two numbers separated by a single space, and highest number is first.

=end

def high_and_low(numbers)
  array = numbers.split(/ /).map{|x| x.to_i}
  array.sort!
  top = (array.length - 1)
  "#{array[top]} #{array[0]}"
end

high_and_low(numbers)

=begin

Best solutions on codewars

users: noku, smepple, DuckForQuack, solitudeever, Beast, geneccx (plus 66 more warriors)

def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end

users: mmmm, m4ur1c1o, michael-mafi, JulioGT

def high_and_low(numbers)
  a = numbers.split.map(&:to_i).sort
  "#{a.last} #{a.first}"
end

=end
