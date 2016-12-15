=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
Note: If the number is a multiple of both 3 and 5, only count it once.

=end

def solution(number)
  results = 0
  1.upto(number-1) do |x|
    results += x if x % 3 == 0 || x % 5 == 0
  end
  results
end

solution(number)

=begin

Best solutions on codewars

users: tanzeeb, pedantech, gdott9, owenbyrne, sdanthony, Darigaaz (plus 7 more warriors)

def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end

user: moser

def solution(number)
  (1...number).select{|n| (n % 5).zero? || (n % 3).zero?}.reduce(:+)
end

=end
