=begin

Description:

Given 2 string parameters, show a concatenation of:

the reverse of the 2nd string with inverted case; e.g Fish -> HSIf
a separator in between both strings: @@@
1st string reversed with inverted case and then mirrored; e.g Water -> RETAwwATER

=end

def reverse_and_mirror(s1,s2)
  s21 = s2.swapcase.reverse
  s11 = s1.swapcase.reverse+s1.swapcase
  s21 + '@@@' + s11
end

=begin

Best solutions on codewars

user: kechja

def reverse_and_mirror(s1,s2)
  (s2.reverse + "@@@" + s1.reverse + s1).swapcase
end

=end
