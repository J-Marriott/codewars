=begin

Given an array, find the int that appears an odd number of times.
There will always be only one integer that appears an odd number of times.

=end

def find_it(seq)
  result = ""
  freq = seq.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  freq.map {|value, count| result = value if count % 2 != 0 }
  result
end

find_it(seq)

=begin

Best answers on codewars

user: c0nspiracy

def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

users: Beast, asanhix, DzmitrySV, coder55, bunnrf, JayDepp

def find_it(seq)
  seq.reduce(:^)
end

=end
