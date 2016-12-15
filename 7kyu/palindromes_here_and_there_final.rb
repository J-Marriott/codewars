=begin

An array is given with palindromic and non-palindromic numbers. Palindromic number is a number that is the same from a reveresed order. For example 122 is not a palindromic number but 202 is one.
Your task is to write a function that returns an array with only 1s and 0s, where all palindromic number is replaced with a 1 and all non-palindromic number of the original array replaced with a 0.

For example:

[101, 2, 85, 33, 14014] will return [1, 1, 0, 1, 0]
and [45, 21, 303, 56] will return [0, 0, 1, 0]

=end

def convert_palindromes(numbers)
  results = []
  i = 0
  numbers.each do
    if numbers[i] == numbers[i].to_s.reverse.to_i
      results.insert(i, 1)
    else
      results.insert(i, 0)
    end
    i += 1
  end
  results
end

numbers = [45, 21, 303, 56]
convert_palindromes(numbers)

=begin

Best solutions on codewars

user: ScottGledhill

def convert_palindromes(numbers)
  numbers.map {|num| num.to_s.reverse == num.to_s ? 1 : 0}
end

users: beaugaines, RubyGemDrew

def convert_palindromes(numbers)
  numbers.map { |num| num.to_s == num.to_s.reverse ? 1 : 0 }
end

=end