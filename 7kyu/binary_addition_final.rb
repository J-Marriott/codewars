=begin

Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.

The binary number returned should be a string.

=end

def add_binary(a,b)
  sum = a + b
  sum.to_s(2)
end

=begin

Best solutions on codewars

users: kpwbo, GiacomoSorbi, tuckyeah, Joel-Elliott, cscheib, nitro7777 (plus 669 more warriors)

def add_binary(a,b)
  (a+b).to_s(2)
end

=end
