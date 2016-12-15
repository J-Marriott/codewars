=begin

Your task is to make a function that can take any non-negative integer as a argument and return it with it's digits in descending order. Descending order means that you take the highest digit and place the next highest digit immediately after it.

Examples:

Input: 145263 Output: 654321
Input: 1254859723 Output: 9875543221

=end

def descending_order(n)
  p array = n.to_s.split('').sort.reverse.join.to_i
end

n = 123456789
descending_order(n)

=begin

Best solutions on codewars

users: Becojo, floum, noku, siddhu208, gicappa, gr33n7007h (plus 260 more warriors)

def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

users: Tzolkin, marocchino, omelkova, kerwinjorbina, DCHahn

def descending_order(n)
  n.to_s.scan(/./).sort.reverse.join.to_i
end
=end
