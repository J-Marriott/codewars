=begin

Write a function partlist that gives all the ways to divide a list (an array) of at least two elements into two non-empty parts.

Each two non empty parts will be in a pair (or an array for languages without tuples or a structin C - C: see Examples test Cases - )
Each part will be in a string
Elements of a pair must be in the same order as in the original array.

=end

def partlist(arr)
  result = []
  0.upto(arr.length-2) do |i|
    result << [arr[0..i].join(" "), arr[i+1..-1].join(" ")]
  end
  result
end

arr = ["az", "toto", "picaro", "zone", "kiwi"]
partlist(arr)

=begin

Best solutions on codewars

users: Becojo & naridas

def partlist(arr)
    (1...arr.size).map { |i|
      [arr.take(i).join(' '), arr.drop(i).join(' ')]
    }
end

user: c0nspiracy

def partlist(arr)
  (1...arr.size).map { |n| [arr.first(n).join(" "), arr.last(arr.size - n).join(" ")] }
end

=end
