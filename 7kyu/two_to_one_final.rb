=begin

Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters, - each taken only once - coming from s1 or s2.

Examples:

a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
longest(a, b) -> "abcdefklmopqwxy"

a = "abcdefghijklmnopqrstuvwxyz"
longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

=end

def longest(a1, a2)
  a3 = a1 + a2
  a3order = a3.chars.sort.join.squeeze
end

=begin

Best solutions on codewars

users: Beast, WillLEarn

def longest(a, b)
  (a+b).chars.uniq.sort.join
end

users: etdev, kylemcmullen, CrazyMerlyn, tibor1, H3r0, bin0m (plus 18 more warriors)

def longest(a1, a2)
  (a1+a2).chars.sort.uniq.join
end

=end
