=begin

The museum of incredible dull things
The museum of incredible dull things wants to get rid of some exhibitions. Miriam, the interior architect, comes up with a plan to remove the most boring exhibitions. She gives them a rating, and then removes the one with the lowest rating.
However, just as she finished rating all exhibitions, she's off to an important fair, so she asks you to write a program that tells her the ratings of the items after one removed the lowest one. Fair enough.

Task

Given an array of integers, remove the smallest value. If there are multiple elements with the same value, remove the one with a lower index. If you get an empty array/list, return an empty array/list.
Don't change the order of the elements that are left.

=end

def remove_smallest(numbers)
  if numbers.length > 0
    n = numbers.index(numbers.min)
    numbers.delete_at(n)
    numbers
  else
    numbers
  end
end

numbers = [5, 3, 2, 1, 4]
remove_smallest(numbers)

=begin

Best solutions on codewars

users: smepple, despinozac, tnegoshi, JulioGT, gor94

def remove_smallest(numbers)
  return [] if numbers.empty?
  numbers.delete_at(numbers.index(numbers.min))
  return numbers
end

user: Insti

def remove_smallest(numbers)
  numbers.reject.with_index { |_,i| i == numbers.index(numbers.min) }
end

=end
