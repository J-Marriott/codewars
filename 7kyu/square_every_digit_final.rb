=begin

Welcome. In this kata, you are asked to square every digit of a number.
For example, if we run 9119 through the function, 811181 will come out.
Note: The function accepts an integer and returns an integer


=end

def square_digits num
  array = num.to_s.split('')
  array = array.map {|x| (x.to_i)*(x.to_i)}.join.to_i
end

num = 3212
puts square_digits(num)

=begin

Best solutions on codewars

users: craecke, noku, Vhaeraun, siddhu208, mattkiernan, awongCM (plus 29 more warriors)

def square_digits num
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end

=end
