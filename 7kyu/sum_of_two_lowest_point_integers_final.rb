=begin

Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 integers. No floats or empty arrays will be passed.
For example, when an array is passed like [19,5,42,2,77], the output should be 7.
[10,343445353,3453445,3453545353453] should return 3453455.
Hint: Do not modify the original array.

=end

def sum_two_smallest_numbers(numbers)
  order = numbers.sort
  order[0] + order[1]
end

=begin

Best solutions on codewars

users: smepple, ddevil691, 10XL, segamatt, npatel111, kaym0 (plus 14 more warriors)

def sum_two_smallest_numbers(numbers)
  numbers.min(2).reduce(:+)
end

users:
zloyrusskiy, sergey87, valscode, caryssaaaa, harpreetsingh500, Aperyon (plus 11 more warriors)

def sum_two_smallest_numbers(numbers)
  numbers.sort[0..1].inject(:+)
end

=end
