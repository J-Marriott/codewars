=begin

Given a random string consisting of numbers, letters, symbols, you need to sum up the numbers in the string.

Note:

Consecutive integers should be treated as a single number. eg, 2015 should be treated as a single number 2015, NOT four numbers
All the numbers should be treaded as positive integer. eg, 11-14 should be treated as two numbers 11 and 14. Same as 3.14, should be treated as two numbers 3 and 14
If no number was given in the string, it should return 0
Example:

str = "In 2015, I want to know how much does iPhone 6+ cost?"
The numbers are 2015, 6

Sum is 2021.

=end

def sum_from_string(str)
  numbers = str.scan(/\d+/).map(&:to_i)
  numbers.inject(0) {|sum, x| sum + x}
end

str = "In 2015, I want to know how much does iPhone 6+ cost?"
sum_from_string(str)

=begin

Best solutions on codewars

users: sh1anky, mikgra, zebogen, c0nspiracy, adrianw1832, max-power (plus 3 more warriors)

def sum_from_string(str)
  str.scan(/\d+/).map(&:to_i).reduce(0, :+)
end

=end
