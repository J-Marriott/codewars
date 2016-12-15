=begin

Write a function that flattens an Array of Array objects into a flat Array. Your function must only do one level of flattening.

flatten [1,2,3] # => [1,2,3]
flatten [[1,2,3],["a","b","c"],[1,2,3]]  # => [1,2,3,"a","b","c",1,2,3]
flatten [[[1,2,3]]] # => [[1,2,3]]

=end

def flatten(array)
  arrayflat = array.flatten(1)
  if arrayflat == []
    array
  elsif arrayflat == nil
    array
  else
    arrayflat
  end
end

flatten(array)

=begin

Best solutions on codewars

users: sebiol, bhubie, craecke, conf, GabTeles, mirelon (plus 1682 more warriors)

def flatten(array)
  array.flatten 1
end

user: radusecrieru

def flatten(array)
  array.inject([]) { |result, elem| result + (elem.is_a?(Array) ? elem : [elem]) }
end

=end
